//
//  KisiDetayVC.swift
//  KisilerUygulamasi
//
//  Created by Furkan Erzurumlu on 2.03.2022.
//

import UIKit

class KisiDetayVC: UIViewController {
    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var kisi:KisilerModel?
    var kisiDetayPresenterNesnesi : ViewToPresenterKisiDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi{
            tfKisiAd.text = k.kisi_ad
            tfKisiTel.text = k.kisi_tel
        }
        KisiDetayRouter.createModule(ref: self)
    }
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ka = tfKisiAd.text, let kt = tfKisiTel.text, let k = kisi {
            kisiDetayPresenterNesnesi?.guncelle(kisi:k, kisi_ad: ka, kisi_tel: kt)
        }
        
    }
    
    

}
