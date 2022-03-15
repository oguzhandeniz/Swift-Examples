import UIKit

func geriyeDogruSay(sayi : Int)
{
    print(sayi)
    if sayi > 0
    {
        geriyeDogruSay(sayi: sayi - 1)
    }
}

print("Geriye Doğru Sayma İşlemi Başladı")
var baslangic : Int = 5
geriyeDogruSay(sayi: baslangic)

print("------------------------------------------------------------")

//Örnek -2

func yazdir(sayi : Int)
{
    print("yazdir(\(sayi)) Fonksiyonu Başladı")
    if sayi > 1
    {
        print("yazdir(\(sayi)) fonksiyonu yazdir(\(sayi - 1)) 'i çağırdı")
        yazdir(sayi: sayi - 1)
    }
    print("yazdir(\(sayi)) fonksiyonu \(sayi) değerini yazdıracak")
    print("yazdir(\(sayi)) fonksiyonu bitti")
}


yazdir(sayi: 3)

print("------------------------------------------------------------")

//Örnek -3

func faktoriyelHesapla(deger : Int) -> Int
{
    if deger == 1
    {
        //burada çağırma işlemini bitirdik
        return 1
    }
    else
    {
        return deger * faktoriyelHesapla(deger: deger - 1)
    }
}
for sayi in (1...10)
{
    print("\(sayi) !  = \(faktoriyelHesapla(deger: sayi))")
}

print("------------------------------------------------------------")

//Örnek -4
//Fibonacci Serisi : 1 - 1 - 2 - 3 - 5 - 8 - 13 - 21 - 34 - 55


func fibonacci(adimSayisi : Int) -> Int
{
    if adimSayisi <= 2
    {
        return 1
    }
    else
    {
        return fibonacci(adimSayisi: adimSayisi - 1) + fibonacci(adimSayisi:  adimSayisi - 2)
    }
}

print(fibonacci(adimSayisi: 6))

print("------------------------------------------------------------")


func fibonacci2(adimSayisi : Int , birinciDeger : Int , ikinciDeger : Int) -> [Int]
{
    
    if adimSayisi == 0
    {
        return []
    }
    
    return [birinciDeger + ikinciDeger] + fibonacci2(adimSayisi: adimSayisi - 1, birinciDeger: ikinciDeger, ikinciDeger: birinciDeger + ikinciDeger)
}


var degerler = [1 , 1] + fibonacci2(adimSayisi: 9, birinciDeger: 1, ikinciDeger: 1)
print(degerler)
print("------------------------------------------------------------")

func fib(sayi : Int) -> Int
{
    switch sayi
    {
    case Int.min...1 : return max(0 , sayi)
    default : return fib(sayi: sayi - 2 ) + fib(sayi: sayi-1)
        
    }
}

let sayilar = Array(1...10)
//Closure
sayilar.forEach {  deger in
print(fib(sayi: deger))
    
}
