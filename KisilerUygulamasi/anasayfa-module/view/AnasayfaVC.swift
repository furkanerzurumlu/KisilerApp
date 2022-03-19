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
    
    var kisilerListe = [KisilerModel]()
    
    var anasayfaPresenterNesnesi : ViewToPresenterAnasayfaProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
    
        anasayfaRouter.createModule(ref: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        anasayfaPresenterNesnesi?.kisileriYukle()
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let kisi = sender as? KisilerModel
            let gidilecekVC = segue.destination as! KisiDetayVC
            gidilecekVC.kisi = kisi
        }
    }
}

extension AnasayfaVC : PresenterToViewAnasayfaProtocol{
    func vieweVeriGonder(kisilerListesi: Array<KisilerModel>) {
        self.kisilerListe = kisilerListesi
        self.kisilerTableView.reloadData()
    }
}

extension AnasayfaVC : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        anasayfaPresenterNesnesi?.ara(aramaKelimesi: searchText)
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
            self.anasayfaPresenterNesnesi?.sil(kisi: kisi)
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
}
