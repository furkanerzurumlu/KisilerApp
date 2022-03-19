//
//  anasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Furkan Erzurumlu on 14.03.2022.
//

import Foundation
<<<<<<< HEAD
import CoreData

class anasayfaInteractor : PresenterToInteractorAnasayfaProtocol{
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let context = appDelegate.persistentContainer.viewContext
    
    func tumKisileriAl() {
        do{
            let liste = try context.fetch(KisilerModel.fetchRequest())
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }catch{}
        
    }
    func kisiAra(aramaKelimesi: String) {
        let fr = KisilerModel.fetchRequest()
        do{
            let liste = try context.fetch(KisilerModel.fetchRequest())
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }catch{}
    }
    func kisiSil(kisi: KisilerModel) {
        
    }
}
=======
>>>>>>> 6471cf46cbc75c55b69d8468cf3a2da28cfbbc53
