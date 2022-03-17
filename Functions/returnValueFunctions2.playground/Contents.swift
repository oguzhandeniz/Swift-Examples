import UIKit


func degerleriHesaplaTuple(degerler : [Int]) -> (minimumSayi : Int, maksimumSayi : Int, sayilarinToplami : Int, sayilarinCarpimi : Int)
{
    var minSayi = degerler[0]       // dizinin ilk elemanını en küçük eleman olarak kabul ettik
    var maksSayi = degerler[0]      // dizinin ilk elemanını başlangıçta en büyük eleman olarak kabul ettik
    var toplam = 0
    var carpim = 1
    
    
    for sayi in degerler
    {
        if sayi < minSayi
        {
            minSayi = sayi
        } else if sayi > maksSayi
        {
            maksSayi = sayi
        }
        
        toplam += sayi
        carpim *= sayi
        
    }
    
    return (minSayi,maksSayi,toplam,carpim)
}


let degerlerim : [Int] = [1,-2,3,4,5,6,10,4,-6]
let sonuclar1 = degerleriHesaplaTuple(degerler: degerlerim)

print("En Küçük Sayı : \(sonuclar1.minimumSayi)")
print("En Büyük Sayı : \(sonuclar1.maksimumSayi)")
print("Sayıların Toplamı : \(sonuclar1.sayilarinToplami)")
print("Sayıların Çarpımı : \(sonuclar1.sayilarinCarpimi)")


print("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")


func degerleriHesaplaDizi(degerler : [Int]) -> [Int]
{
    
    var minSayi = degerler[0]       // dizinin ilk elemanını en küçük eleman olarak kabul ettik
      var maksSayi = degerler[0]    // dizinin ilk elemanını başlangıçta en büyük eleman olarak kabul ettik
      var toplam = 0
      var carpim = 1
      
      
      for sayi in degerler
    {
          if sayi < minSayi
          {
              minSayi = sayi
          } else if sayi > maksSayi
          {
              maksSayi = sayi
          }
          
          toplam += sayi
          carpim *= sayi
          
      }
    return [minSayi,maksSayi,toplam,carpim]
}

let sonuclar2 = degerleriHesaplaDizi(degerler: degerlerim)
print("En Küçük Sayı : \(sonuclar2[0])")
print("En Büyük Sayı : \(sonuclar2[1])")
print("Sayıların Toplamı : \(sonuclar2[2])")
print("Sayıların Çarpımı : \(sonuclar2[3])")


print("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")


func sinifBilgileriniGetir(veriler : [String : Int]) -> (enKiloluKisi : (Adi : String, Kilosu : Int), sinifinKiloOrtalamasi : Double)
{
    
    var enYuksekKilo = -1
    var ortalama : Double = 0.0
    var toplam : Int = 0
    var adi : String = ""
    
    for kisi in veriler
    {
        
        if kisi.value > enYuksekKilo
        {
            enYuksekKilo = kisi.value
            adi = kisi.key
        }
        toplam += kisi.value
    }
    ortalama  = Double(toplam) / Double(veriler.count)
    return ((adi,enYuksekKilo),ortalama)
}


var kilolar : [String : Int] = ["Ahmet" : 98, "Mustafa" : 67, "Yasin" : 74, "Ayşe" : 62, "Burak" : 104, "Mert" : 84 , "Canan" : 65]
var kiloVerileri = sinifBilgileriniGetir(veriler: kilolar)


print("""
    En kilolu kişinin adı : \(kiloVerileri.enKiloluKisi.Adi)
    En yüksek kilo : \(kiloVerileri.enKiloluKisi.Kilosu)
    Sınıfın kilo ortalaması : \(kiloVerileri.sinifinKiloOrtalamasi)
""")
