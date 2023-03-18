//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Oğuzhan Deniz on 6.03.2023.
//

import Foundation
import Firebase

class KisiKayitInteractor : PresenterToInteractorKisiKayitProtocol {
    var refKisiler = Database.database().reference().child("kisiler")
    
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        let yeniKisi = ["kisi_id":"","kisi_ad":kisi_ad,"kisi_tel":kisi_tel]
        refKisiler.childByAutoId().setValue(yeniKisi)
    }
}
