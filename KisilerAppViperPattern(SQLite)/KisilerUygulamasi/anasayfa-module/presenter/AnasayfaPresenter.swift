//
//  AnasayfaPresenter.swift
//  KisilerUygulamasi
//
//  Created by Oğuzhan Deniz on 6.03.2023.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func kisileriYukle() {
        anasayfaInteractor?.tumKisileriAl()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.kisiAra(aramaKelimesi: aramaKelimesi)
    }
    
    func sil(kisi_id: Int) {
        anasayfaInteractor?.kisiSil(kisi_id: kisi_id)
    }
    
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi: Array<Kisiler>) {
        anasayfaView?.vieweVeriGonder(kisilerListesi: kisilerListesi)
    }
}
