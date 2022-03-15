import UIKit

 
var s : String = "12"
var s1 = Int(s)
print(s1)

if let deger = Int(s)
{
    // eğer deger değişkenine bir değer atanırsa
    print("Bu bir sayıdır ve değeri : \(deger)")
} else
{
    //deger değişkenine bir değer atanmadı
    print("Kullanıcının girdiği değer sayısal bir ifade değildir")
}


print("-----------------------------------------------------------------------")

var maaslar : [String : Int] = ["Yunus" : 2500, "Akın" : 9800, "Yalçın" : 4500]
let kisiAdi = "Akın"

let m1 = maaslar[kisiAdi]
print(m1)

//print(m1!)


if let maas = maaslar[kisiAdi]
{
    print("\(kisiAdi) Adlı Kişinin Maaşı : \(maas)")
} else
{
    //eğer veri yoksa
    print("\(kisiAdi) Adlı Kişinin Maaş Bilgisi Bulunamadı")
}


print("-----------------------------------------------------------------------")

var favoriParcam : String? = "Moonlight Sonata"
//favoriParcam = nil

if let parca = favoriParcam
{
    print("Favori Parçam : \(parca)")
} else
{
    print("Herhangi bir parça bulunamadı")
}


print("-----------------------------------------------------------------------")

var sayilar : [Double] = [10,20,30,40,50]

var degerIlk = sayilar.first
print(degerIlk)
print(degerIlk!)
print(degerIlk ?? -1)


print("-----------------------------------------------------------------------")

sayilar = [6]
print(sayilar.first)
//print(sayilar.first!)



if let ilkEleman = sayilar.first
{
    print("Dizinin İlk Elemanı : \(ilkEleman)")
} else
{
    print("Dizinin hiç elemanı yok")
}


//let degerSon = sayilar.last
//let karesi = pow(degerSon!, 2)


if let sonDeger = sayilar.last
{
    let karesi = pow(sonDeger, 2)
    print("\(sonDeger) sayısının karesi : \(karesi)")
} else
{
    print("Böyle bir değer yok")
}


let str1 : String?
let str2 : Optional<String>
let str3 : Optional = "Merhaba"
