import UIKit
import Foundation

var degerler : [Bool]  = Array(repeating: true, count: 10)
print(degerler)

var indeks : Int = 0

for _ in degerler
{
    if indeks % 2 == 0
    {
        degerler[indeks] = false
    }
    indeks += 1
}
print(degerler)

print("************************************************")

var dogruSayisi : Int = 0
var sonuclar = [true,false,true,false,true,true,false,true,true,false,true,true,false,true]
for deger in sonuclar
{
    if deger
    {
        dogruSayisi += 1
    }
}
print("\(sonuclar.count) tane sorudan dogru sayısı : \(dogruSayisi) --- Yanlıs sayısı : \(sonuclar.count-dogruSayisi)")


print("************************************************")


var deger :  Any = -12
print(deger)
print(type(of: deger))

print("***************")

deger = 12.4
print(deger)
print(type(of: deger))

print("***************")
deger = false
print(deger)
print(type(of: deger))

print("***************")


var farkliDegerler : [Any] = [1,2,3,4,true,false,"Oguz","Halim",52.6,22.9]

for d in farkliDegerler
{
    print("Degiskenin tipi : \(type(of: d)) - Degeri \(d)")
}

print("************************************************")


let deger1 = "a"
let deger2 : Character = "a"
print(deger1)
print(deger2)

// let deger3 : Character "ab"   (karakter de sadece tek bir karakter olmak zorundadır.)

print("************************************************")


let cumle : String = "Bugun hava cok sicak"
var karakterler = [Character]()

for k in cumle
{
    karakterler.append(k)
}
print(karakterler)


var ters = ""
// son indeks değerini bulduk
var index = karakterler.count-1
while index >= 0
{
    ters += "\(karakterler[index])"
    index -= 1
}
print(ters)


print("************************************************")


let  cumle2 : String = "Gunun nasil gecti?"
var karakterler2 = Array(cumle2)
print(karakterler2)
// orijinal dizinin karakretlerinin degeri değişir tersi alınır.
karakterler2.reverse()
print(karakterler2)

let ters2 = String(karakterler2)
print(ters2)

print("************************************************")



