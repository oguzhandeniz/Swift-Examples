//
//  Kisiler.swift
//  DataTransferExample
//
//  Created by Oğuzhan Deniz on 23.10.2022.
//

import Foundation

class Kisiler {
    var kisiID:Int?
    var kisiAd:String?
    
    init() {
    }
    
    init(kisiID:Int, kisiAd:String) {
        self.kisiID = kisiID
        self.kisiAd = kisiAd
    }
}
