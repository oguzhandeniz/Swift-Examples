import UIKit

func sayilariTopla(sayi1 : Int , sayi2 : Int) -> Int
{
    
    return sayi1 + sayi2
}

func sayilariTopla(sa1 : Int , sa2 : Int)
{
    
    print("Sayıların toplamı : \(sa1+sa2)")
}

func sayilariTopla(s1 : Double, s2 : Double) -> Double  //ondalıklıya çevirdik
{
    
    return s1 + s2
}

func sayilariTopla(sayilar : [Int])  -> Int
{
    
    var toplam : Int = 0
    for deger in sayilar
    {
        toplam += deger
    }
    return toplam
}

var sonuc1 = sayilariTopla(sayi1: 3, sayi2: 2)
print(sonuc1)
var sonuc2 = sayilariTopla(s1: 3.4, s2: 4.1)
print(sonuc2)
sayilariTopla(sa1: 3, sa2: 4)

print("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+")

var sayilarim = [10,20,30,45,64]
var sonuc3 = sayilariTopla(sayilar: sayilarim)
print("Dizinin elemanlarının toplamı : \(sonuc3)")


print("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+")

func alanHesapla(kenar : Double)
{
    
    print("Karenin alanı : \(kenar*kenar)")
}
func alanHesapla(yaricap : Double)
{
    
    var alan = Double.pi * yaricap * yaricap
    print("Dairenin Alanı : \(alan)")
}

func alanHesapla(kenar1 : Double, kenar2 :  Double)
{
    
    print("Dikdortgenin Alanı : \(kenar1*kenar2)")
}

func alanHesapla(kenar1 : Double , kenar2 : Double, kenar3 : Double)
{
    
    var cevre : Double = kenar1 + kenar2 + kenar3
    var u : Double = cevre / 2
    var alan = (u * (u-kenar1) * (u-kenar2) * (u-kenar3)).squareRoot()
    print("Üçgenin alanı : \(alan)")
}

alanHesapla(kenar: 4)
alanHesapla(yaricap: 3)
alanHesapla(kenar1: 4.4, kenar2: 5.1)
alanHesapla(kenar1: 7, kenar2: 24, kenar3: 25)
