//
//  Kategoriler.swift
//  URLSession
//
//  Created by Oğuzhan Deniz on 20.12.2022.
//

import Foundation

class Kategoriler : Codable {
    var kategori_id:String?
    var kategori_ad:String?
    
    init(kategori_id:String, kategori_ad:String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}
