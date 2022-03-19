//
//  KisiDetayProtocols.swift
//  KisilerUygulamasi
//
//  Created by Furkan Erzurumlu on 14.03.2022.
//

import Foundation

protocol ViewToPresenterKisiDetayProtocol{
    var kisiDetayInteractor : PresenterToInteractorKisiDetayProtocol? {get set}
<<<<<<< HEAD
    func guncelle(kisi:KisilerModel,kisi_ad:String,kisi_tel:String)
}

protocol PresenterToInteractorKisiDetayProtocol{
    func kisiGuncelle(kisi:KisilerModel,kisi_ad:String,kisi_tel:String)
=======
    func guncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String)
}

protocol PresenterToInteractorKisiDetayProtocol{
    func kisiGuncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String)
>>>>>>> 6471cf46cbc75c55b69d8468cf3a2da28cfbbc53
}

protocol PresenterToRouterKisiDetayProtocol{
    static func createModule(ref:KisiDetayVC)
}




