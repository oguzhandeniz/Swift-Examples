import UIKit

// bir dizinin tersini başka bir dizi kullanalarak almak

var markalar : [String] = ["Ford", "Fiat", "Hyundai", "Honda", "Kia"]
print(markalar)
var tersMarkalar = [String]()

for index in stride(from: markalar.count-1, to: -1, by: -1)
{
    tersMarkalar.append(markalar[index])
}
print(tersMarkalar)


print("----------------------------------------------------")

// bir dizinin tersini almak

var sayilar = [1,2,3,4,10,5,6,7,8]
print("Orijinal Hali :      \(sayilar)")

var index1 = 0
let sonIndex = sayilar.count-1

let orta = sonIndex / 2

while index1 <= orta
{
    let index2 = sonIndex - index1
    let gecici = sayilar[index1]
    sayilar[index1] = sayilar[index2]
    sayilar[index2] = gecici
    index1 += 1
}
print("Tersi Alinmis Hali : \(sayilar)")


print("----------------------------------------------------")

// yukarıdaki kodun kısa yolu


var sayilar2 = [1,2,3,4,10,5,6,7,8]
print("Orijinal Hali :      \(sayilar2)")

var index = 0
while index <= (sayilar2.count-1) / 2
{
    sayilar2.swapAt(index, (sayilar2.count-1) - index)
    index += 1
}
print("Tersi Alinmis Hali : \(sayilar2)")


print("----------------------------------------------------")


var kisiler : [String] = ["Ahmet","Halim","Yasin","Sibel","Cemre","Ceren","Kenan","Hamit","Talip"]
var yaslar : [Int] = [28,21,20,19,27,25,26,27,34]
var medeniHali : [Bool] = [true,true,true,false,false,true,false,true,false]

for (i,kisi) in kisiler.enumerated()
{
    print("\(i+1). Kişi   Adı : \(kisi).  Yaşı : \(yaslar[i]). Medeni Hali : \(medeniHali[i] ? "Evli" : "Bekar")")
}

print("----------------------------------------------------")


var sayilar1 = [11,23,34,45,56,78,88,91,57]
var ciftSayilar = [Int]()
var tekSayilar = [Int]()

for sayi in sayilar1
{
    if sayi % 2 == 0
    {
        ciftSayilar.append(sayi)
    } else
    {
        tekSayilar.append(sayi)
    }
}
print("Cift Sayilar : \(ciftSayilar)")
print("Tek Sayilar  : \(tekSayilar)")


print("----------------------------------------------------")


ciftSayilar += [10,20,30]
print("Cift Sayilar : \(ciftSayilar)")

print("----------------------------------------------------")

ciftSayilar += tekSayilar
print("Cift ve Tek Sayilar : \(ciftSayilar)")

print("----------------------------------------------------")

let s1 = 12
ciftSayilar += [s1]
print("Cift ve Eklenen Eleman : \(ciftSayilar)")

print("----------------------------------------------------")

ciftSayilar.swapAt(0, ciftSayilar.count-1)
print("Elemanalı Yer Degistirilmis Cift Sayilar : \(ciftSayilar)")

print("----------------------------------------------------")

var geriKalanCiftSayilar = ciftSayilar.dropFirst(2)
print("Geri Kalan Cift Sayilar : \(geriKalanCiftSayilar)")
print("Cift Sayilar : \(ciftSayilar)")

print("----------------------------------------------------")

geriKalanCiftSayilar = geriKalanCiftSayilar.dropLast(3)
print("Geri Kalan Cift Sayilar : \(geriKalanCiftSayilar)")

print("----------------------------------------------------")

var ilkUcDeger = ciftSayilar[0...2]
print("Cift Sayilar : \(ciftSayilar)")
print("Ilk uc deger : \(ilkUcDeger)")

print("----------------------------------------------------")

let ilkUcKisi = kisiler.prefix(upTo: 3)
print(kisiler)
print(ilkUcKisi)

print("----------------------------------------------------")

print(kisiler.prefix(while: {$0.contains("A")}))

print("----------------------------------------------------")

var sonUcKisi = kisiler.suffix(3)
print(sonUcKisi)

print("----------------------------------------------------")

sonUcKisi = kisiler[(kisiler.count-5)...(kisiler.count-1)]
print(sonUcKisi)

