import UIKit

var notlar = [String : Int]()
print(notlar.count)

notlar["Oguz"] = 45
notlar["Halim"] = 50
notlar["Berkin"] = 60
print(notlar)

notlar["Oguz"] = 70
print(notlar)


print("**--**--**--**--**--**--**--**--**--**--**--**--**--**--**")


//2. Güncelleme yolu
notlar.updateValue(75, forKey: "Oguz")
print(notlar)


//Silme işlemi
notlar.removeValue(forKey: "Halim")
print(notlar)


//Silme 2. yöntem
notlar["Berkin"] = nil
print(notlar)


print("**--**--**--**--**--**--**--**--**--**--**--**--**--**--**")



var dillerDizi = [String]()

dillerDizi.append("Türkçe")
dillerDizi.append("İngilizce")
dillerDizi.append("Fransızca")
print(dillerDizi.count)

dillerDizi.append("Türkçe")
print("Dizide \(dillerDizi.count) tane eleman var")


for dil in dillerDizi
{
    print(dil)
}


print("**--**--**--**--**--**--**--**--**--**--**--**--**--**--**")


//Kümeyle Oluşturalım
var dillerKume = Set<String>()
dillerKume.insert("Türkçe")
dillerKume.insert("Almanca")
dillerKume.insert("Fransızca")
dillerKume.insert("İngilizce")
dillerKume.insert("İspanyolca")

print("Kümede \(dillerKume.count) tane eleman var")

dillerKume.insert("Almanca")
print("Kümede \(dillerKume.count) tane eleman var")


let (eklenmeSonuc, eklenenDeger) = dillerKume.insert("Arapça")

if eklenmeSonuc
{
    
    print("\(eklenenDeger) ifadesi başarılı bir şekilde eklendi")
}
else
{
    print("\(eklenenDeger) ifadesi daha önce olduğu için eklenemedi")
}
print("Kümede \(dillerKume.count) tane eleman var")


print("**--**--**--**--**--**--**--**--**--**--**--**--**--**--**")


let silmeSonuc = dillerKume.remove("Almanca") ?? "Böyle bir değer olmadığı için silme işlemi başarısız"
print(silmeSonuc)

let silmeSonuc2 = dillerKume.remove("Rusça") ?? "Böyle bir değer olmadığı için silme işlemi başarısız"
print(silmeSonuc2)

print("**--**--**--**--**--**--**--**--**--**--**--**--**--**--**")


var arananDil = "Türkçe"
if dillerKume.contains(arananDil)
{
    print("Dil Bulundu")
}
else
{
    print("Dil Bulunamadı")
}

//dillerKume.removeAll()
dillerKume = []


print("**--**--**--**--**--**--**--**--**--**--**--**--**--**--**")


var sayilar1 : Set<Int> = [1,2,3,4,5,6]
var sayilar2 : Set<Int> = [4,5,6,7,8,9]
var sayilar3 : Set<Int> = [4,5,1]
var sayilar4 : Set<Int> = [99,100,10]
var degerler = [1,2,3,4,5]



//KESİŞİM KÜMESİ
let kesisim = sayilar1.intersection(sayilar2).sorted()
print("----------KESİŞİM KÜMESİ----------")
for deger in kesisim
{
    //print(deger)
    print("Kesişim elemanı : \(deger)")
}


//BİRLEŞİM KÜMESİ
print("----------BİRLEŞİM KÜMESİ---------")
let birlesim = sayilar1.union(sayilar2).sorted()
for deger in birlesim
{
    //print(deger)
    print("Birleşim elemanı : \(deger)")
}

//SİMETRİK FARK İŞLEMİ
print("-------SİMETRİK FARK İŞLEMİ-------")
let simetrikFark = sayilar1.symmetricDifference(sayilar2).sorted()

for deger in simetrikFark
{
    //print(deger)
    print("Simetrik fark elemanı : \(deger)")
}



// FARK İŞLEMİ
print("-----------FARK İŞLEMİ------------")
let fark = sayilar1.subtracting(sayilar3).sorted()
for deger in fark
{
    //print(deger)
    print("Fark elemanı : \(deger)")
}



//AYRIK KÜME İŞLEMİ
if sayilar1.isDisjoint(with: sayilar4)
{
    print("Ayrık Kümeler")
}
else
{
    print("Kümeler Ayrık Değil!")
}



//ALT KÜME
if sayilar3.isSubset(of: sayilar1)
{
    print("Alt Kümesidir")
}
else
{
    print("Alt Kümesi Değildir")
}


print("**--**--**--**--**--**--**--**--**--**--**--**--**--**--**")


let k1 : Set = [2,4,6,8,10]
let k2 : Set = [0,3,7,6,8]
let k3 : Set = [4,10,8,2,6,7]


if k1 == k3
{
    print("2 kümenin tüm elemanları tamamen aynı")
}
else
{
    print("2 kümenin birbirinden farklı en az 1 elemanı var")
}
