import UIKit

func mesajGoster(mesaj : String = "Merhaba")
{
    print("Gelen Mesaj : \(mesaj)")
}

mesajGoster()
mesajGoster(mesaj: "Selamlar")

print("*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*")


func sayiUsHesapla(taban : Int, us : Int = 2) -> Int {
    
    var sonuc = 1
    for i in (1...us) {
        sonuc *= taban
    }
    return sonuc
}

print(sayiUsHesapla(taban: 3, us: 4))
print(sayiUsHesapla(taban: 3))

print("*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*")

/*
func sinifOrtalamasiniHesapla(degerler : [Double])  -> Double{
    
    var toplam : Double = 0
    for sayi in degerler {
        toplam += sayi
    }
    return toplam / Double(degerler.count)
}


var degerlerim : [Double] = [1,2,3,4,5,6]
var ortalama = sinifOrtalamasiniHesapla(degerler: degerlerim )
print(ortalama)

*/



func sinifOrtalamasiniHesapla (parametreler : Double...) -> Double {
    print(type(of: parametreler))
    var toplam : Double = 0
    for sayi in parametreler {
        toplam += sayi
    }
    return toplam / Double(parametreler.count)
}

print(sinifOrtalamasiniHesapla(parametreler: 3.4, 5.6, 7.8,9))


print(1,2,3,4,5,6)
print("Kemal"," Sunal")
