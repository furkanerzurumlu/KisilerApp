//
//  kisiKayıtProtocols.swift
//  KisilerUygulamasi
//
//  Created by Furkan Erzurumlu on 14.03.2022.
//

import Foundation
<<<<<<< HEAD

protocol ViewToPresenterKisiKayitProtocol{
    var kisiKayitInteractor : PresenterToInteractorKisiKayitProtocol? {get set}
    func ekle(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToInteractorKisiKayitProtocol{
    func kisiEkle(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToRouterKisiKayitProtocol{
    static func createModule(ref:KisiKayitVC)
}
=======
>>>>>>> 6471cf46cbc75c55b69d8468cf3a2da28cfbbc53
