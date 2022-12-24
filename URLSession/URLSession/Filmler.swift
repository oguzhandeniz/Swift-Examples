//
//  Filmler.swift
//  URLSession
//
//  Created by Oğuzhan Deniz on 20.12.2022.
//

import Foundation

class Filmler : Codable {
    var film_id:String?
    var film_ad:String?
    var film_yil:String?
    var film_resim:String?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id:String, film_ad:String, film_yil:String, film_resim:String) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.film_resim = film_resim
    }
}
// JSON YAPISI
/*
 {
    "filmler":[
       {
          "film_id":"1",
          "film_ad":"Interstellar",
          "film_yil":"2015",
          "film_resim":"interstellar.png",
          "kategori":{
             "kategori_id":"4",
             "kategori_ad":"Bilim Kurgu"
          },
          "yonetmen":{
             "yonetmen_id":"1",
             "yonetmen_ad":"Christopher Nolan"
          }
       },
       {
          "film_id":"2",
          "film_ad":"Inception",
          "film_yil":"2010",
          "film_resim":"inception.png",
          "kategori":{
             "kategori_id":"4",
             "kategori_ad":"Bilim Kurgu"
          },
          "yonetmen":{
             "yonetmen_id":"1",
             "yonetmen_ad":"Christopher Nolan"
          }
       },
       {
          "film_id":"3",
          "film_ad":"The Pianist",
          "film_yil":"2002",
          "film_resim":"thepianist.png",
          "kategori":{
             "kategori_id":"3",
             "kategori_ad":"Drama"
          },
          "yonetmen":{
             "yonetmen_id":"4",
             "yonetmen_ad":"Roman Polanski"
          }
       },
       {
          "film_id":"4",
          "film_ad":"Bir Zamanlar Anadolu'da",
          "film_yil":"2011",
          "film_resim":"birzamanlaranadoluda.png",
          "kategori":{
             "kategori_id":"3",
             "kategori_ad":"Drama"
          },
          "yonetmen":{
             "yonetmen_id":"3",
             "yonetmen_ad":"Nuri Bilge Ceylan"
          }
       },
       {
          "film_id":"5",
          "film_ad":"The Hateful Eight",
          "film_yil":"2015",
          "film_resim":"thehatefuleight.png",
          "kategori":{
             "kategori_id":"1",
             "kategori_ad":"Aksiyon"
          },
          "yonetmen":{
             "yonetmen_id":"2",
             "yonetmen_ad":"Quentin Tarantino"
          }
       },
       {
          "film_id":"18",
          "film_ad":"Django",
          "film_yil":"2013",
          "film_resim":"django.png",
          "kategori":{
             "kategori_id":"1",
             "kategori_ad":"Aksiyon"
          },
          "yonetmen":{
             "yonetmen_id":"2",
             "yonetmen_ad":"Quentin Tarantino"
          }
       }
    ],
    "success":1
 }
 
 */
