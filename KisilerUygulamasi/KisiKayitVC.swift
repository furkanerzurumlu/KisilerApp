//
//  KisiKayıtVC.swift
//  KisilerUygulamasi
//
//  Created by Furkan Erzurumlu on 2.03.2022.
//

import UIKit

class KisiKayitVC: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text, let kt = tfKisiTel.text{
            Kayit(kisi_ad: ka, kisi_tel: kt)
        }
    }
    func Kayit(kisi_ad:String,kisi_tel:String){
        print("Kişi kayıt : \(kisi_ad) - \(kisi_tel)")
    }

   

}
