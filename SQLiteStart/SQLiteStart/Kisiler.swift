//
//  Kisiler.swift
//  SQLiteStart
//
//  Created by Oğuzhan Deniz on 8.12.2022.
//

import Foundation


class Kisiler {
    var kisi_id:Int?
    var kisi_ad:String?
    var kisi_yas:Int?
    
    init() {
        
    }
    
    init(kisi_id:Int,kisi_ad:String,kisi_yas:Int) {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_yas = kisi_yas
        
    }
}
