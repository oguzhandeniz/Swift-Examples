//
//  Yonetmenler.swift
//  FilmlerApp
//
//  Created by Oğuzhan Deniz on 13.12.2022.
//

import Foundation

class Yonetmenler {
    
    var yonetmen_id: Int?
    var yonetmen_ad: String?
    
    init() {
        
    }
    
    init(yonetmen_id: Int, yonetmen_ad: String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}
