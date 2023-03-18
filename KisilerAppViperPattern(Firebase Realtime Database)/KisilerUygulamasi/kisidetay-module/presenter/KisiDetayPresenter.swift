//
//  KisiDetayPresenter.swift
//  KisilerUygulamasi
//
//  Created by Oğuzhan Deniz on 6.03.2023.
//

import Foundation

class KisiDetayPresenter : ViewToPresenterKisiDetayProtocol {
    var kisiDetayInteractor: PresenterToInteractorKisiDetayProtocol?
    
    func guncelle(kisi_id: String, kisi_ad: String, kisi_tel: String) {
        kisiDetayInteractor?.kisiGuncelle(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
