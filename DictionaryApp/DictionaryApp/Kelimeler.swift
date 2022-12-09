//
//  Kelimeler.swift
//  DictionaryApp
//
//  Created by Oğuzhan Deniz on 9.12.2022.
//

import Foundation

class Kelimeler {
    
    var kelime_id:Int?
    var ingilizce:String?
    var turkce:String?
    
    init() {
        
    }
    
    init(kelime_id:Int,ingilizce:String,turkce:String) {
        
        self.kelime_id = kelime_id
        self.ingilizce = ingilizce
        self.turkce = turkce
    }
}
