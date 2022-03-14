import UIKit

var sayi : [Int] = []
var sayilar = [Int]()
print(sayi)
print(sayilar)

var sayilar1 : [Int] = [10,20,30,40,50,60]
print(sayilar1)


var sayilar2 = [1,2,3,4,5,6,7]
print(sayilar2)


var sayilar3 : [Int] = Array(repeating: 0, count: 10)
print(sayilar3)


let deger1 = sayilar1[2]
print(deger1)

//dizideki eleman sayısını öğrenme
print("\(sayilar2.count) tane eleman var")

//dizinin tipini öğrenme
print(type(of: sayilar1))



sayilar1.append(75)
print(sayilar1)


sayilar1[2] += 35
print(sayilar1)


//dizinin içindeki max min değerleri öğrenme
print(sayilar1.max()!)
print(sayilar1.min()!)


//dizinin boş olup olmadığını öğrenme
if sayilar.isEmpty
{
    print("Dizide eleman yok.")
}
else
{
    print("Dizide \(sayilar.count) tane eleman var.")
}


//dizinin boş olup olmadığını öğrenme
if sayilar2.isEmpty
{
    print("Dizide eleman yok.")
}
else
{
    print("Dizide \(sayilar2.count) tane eleman var.")
}


//diziyi sıralama
let siraliDizi = sayilar1.sorted()
print(siraliDizi)


var meyveler : [String] = ["kiraz","karpuz","elma","şeftali","armut"]
var aSayisi : Int = 0

for meyve in meyveler
{
    for karakter in meyve
    {
        if karakter == "a"
        {
            aSayisi += 1
        }
    }
}
print("Meyvelerdeki a karakter sayısı : \(aSayisi)")


let siraliMeyveler = meyveler.sorted()
print(siraliMeyveler)


var toplam : Int = 0
for sayi in sayilar1
{
    toplam += sayi
}
print("Toplam : \(toplam)")
let ortalama = Double(toplam) / Double(sayilar1.count)
print("Ortalama : \(ortalama)")

let formatliDouble = String(format: "%.2f", ortalama)
print("Ortalama : \(formatliDouble)")


for(index,deger) in sayilar1.enumerated()
{
    print("Sayilar3[\(index)] = \(deger)")
}

print(sayilar1)
sayilar1.append(contentsOf: sayilar2)
print(sayilar1)


let siraliDizi2 = sayilar1.sorted()
print(siraliDizi2)


var isimler = ["Ayşe",
               "Fatma",
               "Hakan",
               "Murat",
               "Yunus"
]
print(isimler)


let varMi = isimler.contains("Murat")
let varMi2 = isimler.contains("Mustafa")
if varMi
{
    print("Var")
}
else
{
    print("Yok")
}

if varMi2
{
    print("Var")
}
else
{
    print("Yok")
}

isimler.append("Halim")
print(isimler)

isimler.append(contentsOf: meyveler)
print(isimler)


isimler.insert("Ahmet", at: 2)
print(isimler)

isimler.remove(at: 4)
print(isimler)

