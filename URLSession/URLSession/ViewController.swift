//
//  ViewController.swift
//  URLSession
//
//  Created by Oğuzhan Deniz on 19.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //kisiEkle()
        //tumKisileriAl()
        //kisiEkle()
        //tumFilmleriAl()
        //kisiAramaYap()
        //kisiSil()
        //kisiGuncelle()
        //tumKisileriAlCodable()
        //tumFilmlerAlCodable()
        //kisiAramaYapCodable()
        
    }

    
    func tumKisileriAl(){
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if error != nil || data == nil {    //hata ve veri kontrolü
                print("Hata")
                return//Hata oluşursa task çalışması durdurulur.
                
            }
            do {
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    //gelen JSON Verisinin hepsini alır.
                   
                    if let kisiler = json["kisiler"] as? [[String:Any]] {       //array çift [[
                      
                        for kisi in kisiler {//Gelen json dizisinin içindeki nesneleri almak için döngü
                            print("kisi id    : \(kisi["kisi_id"]!)")
                            print("kisi ad    : \(kisi["kisi_ad"]!)")
                            print("kisi tel   : \(kisi["kisi_tel"]!)")
                            
                        }
                    }
                }
                
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()//İşlem bitince çalışma tekrar çalışma için bekletilir.
    }
    func tumFilmleriAl(){
        let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_filmler.php")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil || data == nil {//hata ve veri kontrolü
                print("Hata")
                return//Hata oluşursa task çalışması durdurulur.
                
            }
            do {
                //Binding işlemi ile kontrollü veri alınır.
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    //gelen JSON Verisinin hepsini alır.
                    if let filmler = json["filmler"] as? [[String:Any]] { //array çift [[
                        
                        for film in filmler { //Gelen json dizisinin içindeki nesneleri almak için döngü
                            print("film id    : \(film["film_id"]!)")
                            print("film adı   : \(film["film_ad"]!)")
                            print("film yil   : \(film["film_yil"]!)")
                            print("film resim : \(film["film_resim"]!)")
                            if let kategori = film["kategori"] as? [String:Any] { // nesne tek [
                                print("kategori id  : \(kategori["kategori_id"]!)")
                                print("kategori adı : \(kategori["kategori_ad"]!)")
                                
                            }
                            if let yonetmen = film["yonetmen"] as? [String:Any] { // nesne tek [
                                print("yonetmen id  : \(yonetmen["yonetmen_id"]!)")
                                print("yonetmen adı : \(yonetmen["yonetmen_ad"]!)")
                                
                            }
                        }
                    }
                }
                
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()//İşlem bitince çalışma tekrar çalışma için bekletilir.
        
    }
        
    
    func kisiEkle(){
        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php")!)
        
        request.httpMethod = "POST"                             //Metod türü
        let postString = "kisi_ad=TESTad&kisi_tel=TESTtel"      //Gönderilecek veriler & işareti ile ayrılır.
        request.httpBody = postString.data(using: .utf8)        //Veri gönderilirken türkçeye uygun olmalıdır.
        URLSession.shared.dataTask(with: request) { (data, response, error) in
                
        if error != nil || data == nil {    //hata ve veri kontrolü
            print("Hata")
            return//Hata oluşursa task çalışması durdurulur.
        }
            do {
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    //gelen JSON Verisinin hepsini alır.
                    print(json)
                }
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
        }.resume()
    }

    
    func kisiSil() {
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php")!)
        
        request.httpMethod = "POST"
        
        let postString = "kisi_id=119"
        request.httpBody = postString.data(using: .utf8)//Veri gönderilirken türkçeye uygun olmalıdır.
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {//hata ve veri kontrolü
                print("Hata")
                return//Hata oluşursa task çalışması durdurulur.
            }
            do {
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    //gelen JSON Verisinin hepsini alır.
                    print(json)
                    
                }
                
            } catch {
                print("JSON error: \(error.localizedDescription)")
                
            }
        
        }.resume()
    }
    
    func kisiGuncelle(){
        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/update_kisiler.php")!)
        //post isteği yapılacak url
        request.httpMethod = "POST"         //Metod türü
        
        let postString = "kisi_id=89&kisi_ad=TESTadx&kisi_tel=TESTtelx" //Gönderilecek veriler & işareti ile ayrılır.
        
        request.httpBody = postString.data(using: .utf8)    //Veri gönderilirken türkçeye uygun olmalıdır.
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {    //hata ve veri kontrolü
                print("Hata")
                return  //Hata oluşursa task çalışması durdurulur.
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    //gelen JSON Verisinin hepsini alır.
                    print(json)
                }
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()
        
    }
    
    func kisiAramaYap(){
        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php")!)
        //post isteği yapılacak url
        request.httpMethod = "POST" //Metod türü
        
        let postString = "kisi_ad=a"    //Gönderilecek veriler & işareti ile ayrılır.
        
        request.httpBody = postString.data(using: .utf8)    //Veri gönderilirken türkçeye uygun olmalıdır.
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {    //hata ve veri kontrolü
                print("Hata")
                return  //Hata oluşursa task çalışması durdurulur.
            }
            
            do {
                
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    //gelen JSON Verisinin hepsini alır.
                    if let kisiler = json["kisiler"] as? [[String:Any]] {   //array çift [[
                        
                        for kisi in kisiler {   //Gelen json dizisinin içindeki nesneleri almak için döngü
                            
                            print("kisi id    : \(kisi["kisi_id"]!)")
                            print("kisi ad    : \(kisi["kisi_ad"]!)")
                            print("kisi tel   : \(kisi["kisi_tel"]!)")
                            
                        }
                    }
                }
                
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()
        
    }
    
    func kisiAramaYapCodable(){
        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php")!)
        //post isteği yapılacak url
        request.httpMethod = "POST" //Metod türü
        
        let postString = "kisi_ad=a"    //Gönderilecek veriler & işareti ile ayrılır.
        
        request.httpBody = postString.data(using: .utf8)    //Veri gönderilirken türkçeye uygun olmalıdır.
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {    //hata ve veri kontrolü
                print("Hata")
                return  //Hata oluşursa task çalışması durdurulur.
            }
            
            do {
                
                let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data!)
                
                if let kisiListesi = cevap.kisiler {
                    
                    for kisi in kisiListesi {   //Gelen cevabın içindeki listeyi almak için döngü
                        
                        print("kisi id    : \(kisi.kisi_id!)")
                        print("kisi ad    : \(kisi.kisi_ad!)")
                        print("kisi tel   : \(kisi.kisi_tel!)")
                    }
                }
                
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
        }.resume()
        
    }
    
    
    func tumKisileriAlCodable(){
        
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")!
        //istek yapılacak url
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            //İşlem yapmak için yapı
            
            if error != nil || data == nil {    //hata ve veri kontrolü
                print("Hata")
                return  //Hata oluşursa task çalışması durdurulur.
            }
            
            do {

                let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data!)
                
                if let kisiListesi = cevap.kisiler {
                    
                    for kisi in kisiListesi {   //Gelen cevabın içindeki listeyi almak için döngü
                        
                        print("kisi id    : \(kisi.kisi_id!)")
                        print("kisi ad    : \(kisi.kisi_ad!)")
                        print("kisi tel   : \(kisi.kisi_tel!)")
                    }
                    
                }
                
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()  //İşlem bitince çalışma tekrar çalışma için bekletilir.
        
        
    }
    
    func tumFilmlerAlCodable(){
        
        let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_filmler.php")!
        //istek yapılacak url
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            //İşlem yapmak için yapı
            
            if error != nil || data == nil {    //hata ve veri kontrolü
                print("Hata")
                return  //Hata oluşursa task çalışması durdurulur.
            }
            
            do {
                
                let cevap = try JSONDecoder().decode(FilmlerCevap.self, from: data!)
                
                print(cevap.filmler![0].film_ad!)
                
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()  //İşlem bitince çalışma tekrar çalışma için bekletilir.
        
    }
}

