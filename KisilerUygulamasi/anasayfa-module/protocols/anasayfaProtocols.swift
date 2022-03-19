//
//  anasayfaProtocols.swift
//  KisilerUygulamasi
//
//  Created by Furkan Erzurumlu on 14.03.2022.
//

import Foundation
<<<<<<< HEAD

protocol ViewToPresenterAnasayfaProtocol{
    var anasayfaInteractor : PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView : PresenterToViewAnasayfaProtocol?{get set}
    
    func kisileriYukle()
    func ara(aramaKelimesi:String)
    func sil(kisi:KisilerModel)
}
protocol PresenterToInteractorAnasayfaProtocol{
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func tumKisileriAl()
    func kisiAra(aramaKelimesi:String)
    func kisiSil(kisi:KisilerModel)
}
protocol InteractorToPresenterAnasayfaProtocol{
    
    func presenteraVeriGonder(kisilerListesi:Array<KisilerModel>)
}
protocol PresenterToViewAnasayfaProtocol{
    
    func vieweVeriGonder(kisilerListesi:Array<KisilerModel>)
}

protocol PresenterToRouterAnasayfaProtocol{
    static func createModule(ref:AnasayfaVC)
}
=======
>>>>>>> 6471cf46cbc75c55b69d8468cf3a2da28cfbbc53
