//
//  anasayfaPresenter.swift
//  KisilerUygulamasi
//
//  Created by Furkan Erzurumlu on 14.03.2022.
//

import Foundation
<<<<<<< HEAD

class anasayfaPresenter : ViewToPresenterAnasayfaProtocol{
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    
    
    
    func kisileriYukle() {
        anasayfaInteractor?.tumKisileriAl()
    }
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.kisiAra(aramaKelimesi: aramaKelimesi)
    }
    func sil(kisi: KisilerModel) {
        anasayfaInteractor?.kisiSil(kisi: kisi)
    }
    
}

extension anasayfaPresenter : InteractorToPresenterAnasayfaProtocol{
    func presenteraVeriGonder(kisilerListesi: Array<KisilerModel>) {
        anasayfaView?.vieweVeriGonder(kisilerListesi: kisilerListesi)
    }
}
=======
>>>>>>> 6471cf46cbc75c55b69d8468cf3a2da28cfbbc53
