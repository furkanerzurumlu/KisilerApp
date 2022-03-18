//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Furkan Erzurumlu on 2.03.2022.
//

import UIKit

class AnasayfaVC: UIViewController{
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Furkan", kisi_tel: "111111")
        let k2 =  Kisiler(kisi_id: 12, kisi_ad: "Ahmet", kisi_tel: "1112111")
        let k3 =  Kisiler(kisi_id: 13, kisi_ad: "Sezin", kisi_tel: "1113111")
        
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
    }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let kisi = sender as? Kisiler
            let gidilecekVC = segue.destination as! KisiDetayVC
            gidilecekVC.kisi = kisi
        }
    }
}

extension AnasayfaVC : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonucu \(searchText)")
    }

}
extension AnasayfaVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = kisilerListe[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewHucre //Cell'e erişmek için gerekli
        hucre.kisiBilgiLable.text = "\(kisi.kisi_ad!) -  \(kisi.kisi_tel!) "
        return hucre
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = kisilerListe[indexPath.row]
        //print("\(kisi.kisi_ad!) seçildi") hangi satır seçildiyse onu döndürür
        performSegue(withIdentifier: "toDetay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true) //Seçili satırı kaldırır, renk olarak
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title: "Sil"){(contextualAction,view,bool) in
            let kisi = self.kisilerListe[indexPath.row]
            
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(kisi.kisi_ad!) silinsin mi ?", preferredStyle: .alert)
            self.present(alert, animated: true)
            let ıptalAction = UIAlertAction(title: "İptal", style: .cancel){action in}
            alert.addAction(ıptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){action in}
            alert.addAction(evetAction)
            print("\(kisi.kisi_ad!) silindi")
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
}
