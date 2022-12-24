//
//  Kisiler.swift
//  URLSession
//
//  Created by Oğuzhan Deniz on 20.12.2022.
//

import Foundation

class Kisiler : Codable {
    var kisi_id:String?
    var kisi_ad:String?
    var kisi_tel:String?
    
    init(kisi_id:String, kisi_ad:String, kisi_tel:String) {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_tel = kisi_tel
    }
}
// JSON YAPISI
/*
{
   "kisiler":[
      {
         "kisi_id":"12768",
         "kisi_ad":"xxxx",
         "kisi_tel":"1231213"
      },
      {
         "kisi_id":"12775",
         "kisi_ad":"dfdfgfdg",
         "kisi_tel":"34534"
      },
      {
         "kisi_id":"12782",
         "kisi_ad":"asdfd",
         "kisi_tel":"312"
      },
      {
         "kisi_id":"12784",
         "kisi_ad":"yusuf",
         "kisi_tel":"12334534534"
      },
      {
         "kisi_id":"12793",
         "kisi_ad":"yapld",
         "kisi_tel":"46454"
      },
      {
         "kisi_id":"12794",
         "kisi_ad":"???22",
         "kisi_tel":"???22"
      },
      {
         "kisi_id":"12797",
         "kisi_ad":"aa",
         "kisi_tel":"ddd"
      },
      {
         "kisi_id":"12798",
         "kisi_ad":"asdfasdf",
         "kisi_tel":"31222231"
      },
      {
         "kisi_id":"12799",
         "kisi_ad":"dsafsdf",
         "kisi_tel":"31222231"
      },
      {
         "kisi_id":"12800",
         "kisi_ad":"TESTad",
         "kisi_tel":"TESTtel"
      }
   ],
   "success":1
}
*/
