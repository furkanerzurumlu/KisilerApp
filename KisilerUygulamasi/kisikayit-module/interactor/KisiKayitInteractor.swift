//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Furkan Erzurumlu on 14.03.2022.
//

import Foundation
<<<<<<< HEAD

class KisiKayitInteractor : PresenterToInteractorKisiKayitProtocol{
    let context = appDelegate.persistentContainer.viewContext
    
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        let kisi = KisilerModel(context: context)
        kisi.kisi_ad = kisi_ad
        kisi.kisi_tel = kisi_tel
        appDelegate.saveContext()
    }
}
=======
>>>>>>> 6471cf46cbc75c55b69d8468cf3a2da28cfbbc53
