import UIKit

// var/let sözlükAdı : [keyTipi : valueTipi]
// var/let sözlükAdı = [keyTipi : valueTipi]()

var sayilar = [String : Int]()
sayilar["bir"] = 1
sayilar["iki"] = 2
sayilar["uc"] = 3
sayilar["dort"] = 4

print(sayilar["bir"] ?? "Böyle Bir Veri Yok")
print(sayilar["bes"] ?? "Böyle Bir Veri Yok")

//verileri çekme sırası rastgeledir.

for (key,value) in sayilar
{
    print("Anahtar : \(key) -- Değer : \(value)")
}

print("---------/---------/----------/---------/-----------")


let anahtarlar1 = sayilar.keys
for key in anahtarlar1
{
    print(key)
}


let degerler1 = sayilar.values
for value in sayilar.values
{
    print(value)
}

print("---------/---------/----------/---------/-----------")


let degerler2 = Array(sayilar.values)
var toplam = 0
for s in degerler2
{
    toplam += s
}
print("Toplam : \(toplam)")

print("---------/---------/----------/---------/-----------")

let anahtarlar2 = Array(sayilar.keys)
print(anahtarlar2)

print("---------/---------/----------/---------/-----------")


var kisiBilgiler = [String : Any]()
kisiBilgiler["Adi"] = "Oguzhan"
kisiBilgiler["Soyadi"] = "Deniz"
kisiBilgiler["Evli"] = false
kisiBilgiler["Yasi"] = 23


for (key,value) in kisiBilgiler
{
    print("\(key) : \(value)")
}

// sözlükteki tüm verileri siler
//kisiBilgiler = [:]


print("---------/---------/----------/---------/-----------")


if kisiBilgiler.isEmpty
{
    print("Sözlük Boş")
} else
{
    print("Sözlükteki eleman sayısı : \(kisiBilgiler.count)")
}

print("---------/---------/----------/---------/-----------")


var baskentler = ["Türkiye" : "Ankara",
                  "Almanya" : "Berlin",
                  "ABD"     : "Washington",
                  "Fransa"  : "Paris",
                  "İrlanda" : "Dublin"]


var plakalar = ["İstanbul" : 34, "Ankara" : 6, "İzmir" : 35]



var h1 = ["Adi" : "Aslan", "AyakSayisi" : "4", "Hareket" : "Hızlı Koşar"]
var h2 = ["Adi" : "Kedi", "AyakSayisi" : "4", "Hareket" : "Yavaş Gider"]
var h3 = ["Adi" : "Kuş", "AyakSayisi" : "2", "Hareket" : "Uçar"]


var dizi = [[String : String]()]
dizi.removeFirst()
dizi.append(h1)
dizi.append(h2)
dizi.append(h3)

print(dizi)

print(dizi.count)
print(dizi[0]["Adi"]!)


print("---------/---------/----------/---------/-----------")



let sayilar1 = [Int()]
print(sayilar1.count)



var dizi2 = [[String : String]()]
dizi2.removeFirst()
dizi2.append(h1)
dizi2.append(h3)


var hayvanlar = [String : Array<Dictionary<String,String>>]()

hayvanlar["Sürü-1"] = dizi
hayvanlar["Sürü-2"] = dizi2

for (key,value) in hayvanlar
{
    print("----------------")
    print(key)
    print(value)
}


for (key,value) in hayvanlar
{
    print("**********************************")
    print("\(key) Sürüsündeki Hayvanların Listesi")
    
    for hayvanlar1 in value
    {
        print("-----------------------")
        print("Adı : \(hayvanlar1["Adi"]!)")
        print("Ayak Sayısı : \(hayvanlar1["AyakSayisi"]!)")
        print("Hareket Özelliği : \(hayvanlar1["Hareket"]!)")
        
    }
}

