//
//  KisiDetayPresenter.swift
//  KisilerUygulamasi
//
//  Created by Furkan Erzurumlu on 14.03.2022.
//

import Foundation
<<<<<<< HEAD

class KisiDetayPresenter : ViewToPresenterKisiDetayProtocol{
    var kisiDetayInteractor: PresenterToInteractorKisiDetayProtocol?
    
    func guncelle(kisi:KisilerModel, kisi_ad: String, kisi_tel: String) {
        kisiDetayInteractor?.kisiGuncelle(kisi: kisi, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
=======
>>>>>>> 6471cf46cbc75c55b69d8468cf3a2da28cfbbc53
