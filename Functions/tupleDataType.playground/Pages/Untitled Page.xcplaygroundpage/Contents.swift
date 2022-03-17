import UIKit

let adi = "Halim Can"
let soyadi = "Ocakli"
print(adi)
print(soyadi)

var nameSurname1 : (String,String)?
//veya

var nameSurname2 = ("Halim Can","Ocakli")

print(nameSurname2.0) // Halim Can yazdırır
print(nameSurname2.1) // Ocakli yazdırır


print("/*-/*-/*-/*-/*-/*-/*-/*-/*-/*-/-*/-*/*-/*-/*-/-*/-*/-*/-*/-*/-*/")


let webSayfasi = (durumKodu : 404, durumMesaj : "Sayfa Bulunamadı")

print("Bir web sayfasi ararken \(webSayfasi.durumKodu) hatasını alırsanız anlamı : \(webSayfasi.durumMesaj)")


print("/*-/*-/*-/*-/*-/*-/*-/*-/*-/*-/-*/-*/*-/*-/*-/-*/-*/-*/-*/-*/-*/")


nameSurname2 = ("Oguzhan","Deniz") // 3.string değeri giremeyiz ("Oguzhan","Deniz","Merhaba")

print(nameSurname2.0) // Oguzhan yazdırır
print(nameSurname2.1) // Deniz yazdırır

print("/*-/*-/*-/*-/*-/*-/*-/*-/*-/*-/-*/-*/*-/*-/*-/-*/-*/-*/-*/-*/-*/")


var nameSurname3 : (Adi : String , Soyadi : String)
nameSurname3.Adi = "Mustafa"
nameSurname3.Soyadi = "Gebal"
print(nameSurname3.0) // Mustafa yazdırır
print(nameSurname3.1) // Gebal yazdırır


print("/*-/*-/*-/*-/*-/*-/*-/*-/*-/*-/-*/-*/*-/*-/*-/-*/-*/-*/-*/-*/-*/")

var name : String = ""
var surname : String = ""
(name,surname) = nameSurname3
print(nameSurname3.0) // Mustafa yazdırır
print(nameSurname3.1) // Gebal yazdırır

print("/*-/*-/*-/*-/*-/*-/*-/*-/*-/*-/-*/-*/*-/*-/*-/-*/-*/-*/-*/-*/-*/")


var sayi1,sayi2 : Int
(sayi1,sayi2) = (3,5)
print(sayi1)
print(sayi2)

print("/*-/*-/*-/*-/*-/*-/*-/*-/*-/*-/-*/-*/*-/*-/*-/-*/-*/-*/-*/-*/-*/")

//Degerleri tuple yapısını kullanmadan takas etmek
let gecici = sayi1
sayi1 = sayi2
sayi2 = gecici

print("Sayi1: \(sayi1)")
print("Sayi2: \(sayi2)")

print("--------------------")
//Degerleri tuple yapısını kullanarak takas etmek

(sayi1,sayi2) = (sayi2,sayi1)
print("Sayi1: \(sayi1)")
print("Sayi2: \(sayi2)")

print("/*-/*-/*-/*-/*-/*-/*-/*-/*-/*-/-*/-*/*-/*-/*-/-*/-*/-*/-*/-*/-*/")


var kisi1 = (KisininAdi : "Ivan", KisininSoyadi : "Turgenyev", AileBilgileri : (EvliMi : false, CocukSayisi : 0))
var kisi2 = (KisininAdi : "Peyami", KisininSoyadi : "Safa", AileBilgileri : (EvliMi : true, CocukSayisi : 2))

print(kisi2.AileBilgileri.EvliMi ? "Evli" : "Bekar")
print(kisi2.AileBilgileri.CocukSayisi)
print(kisi2.KisininAdi)
print("--------------------")
print(kisi2.2.0 ? "Evli" : "Bekar")
print(kisi2.2.1)
print(kisi2.0)


print("/*-/*-/*-/*-/*-/*-/*-/*-/*-/*-/-*/-*/*-/*-/*-/-*/-*/-*/-*/-*/-*/")

var sosyalMedyaSiteleri = (siteAdresleri : ["www.instagram.com","www.facebook.com","www.twitter.com"], kullaniciSayilari : [127,238,396])

for (indeks,adres) in sosyalMedyaSiteleri.siteAdresleri.enumerated()
{
    print("Sitenin Adresi : \(adres)")
    print("Kullanıcı Sayısı : \(sosyalMedyaSiteleri.kullaniciSayilari[indeks])")
}

print("/*-/*-/*-/*-/*-/*-/*-/*-/*-/*-/-*/-*/*-/*-/*-/-*/-*/-*/-*/-*/-*/")



func ikiNoktaArasindakiUzakligiBul(nokta1 : (xDegeri: Int, yDegeri: Int), nokta2 : (xDegeri : Int, yDegeri : Int))
{
    
    var xFark = nokta1.xDegeri - nokta2.xDegeri
    var yFark = nokta1.yDegeri - nokta2.yDegeri
    
    xFark *= xFark
    yFark *= yFark
    
    let uzaklik : Double = Double(xFark + yFark).squareRoot()
    print("2 Nokta Arasındaki Uzaklık : \(uzaklik)")
}


var n1 = (xDegeri : 6, yDegeri : 8)
var n2 = (xDegeri : 3, yDegeri : 4)
ikiNoktaArasindakiUzakligiBul(nokta1: n1, nokta2: n2)
