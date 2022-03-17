import UIKit


// Tek çift kontrolü
func kontolEt(sayi : Int) -> String
{
    if sayi % 2 == 0
    {
        return "Çift"
    }
    else
    {
        return "Tek"
    }
}

for sayac in (1...10)
{
    let deger = kontolEt(sayi: sayac)
    print("\(sayac) => \(deger)")
}

print("*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*")


// Negatif Sayilari Bul
func negatifBul(sayilarim : [Int]) -> [Int]
{
    var negatifler : [Int] = [Int]()
    
    for deger in sayilarim
    {
        if deger < 0
        {
            negatifler.append(deger)
        }
    }
    
    return negatifler
}

var sayilar : [Int] = [10,-20,45,-4,55,-1,28,0,35]
var negatifler = negatifBul(sayilarim: sayilar)
print(negatifler)


print("*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*")


// Küçük Harflileri Döndürme
func ihtiyaclariDuzenle(ihtiyaclarim : [String]) -> [String]
{
    var sonucDegerleri : [String] = [String]()
    
    for var deger in ihtiyaclarim
    {
        deger = deger.lowercased()
        
        if sonucDegerleri.contains(deger) == false
        {
            sonucDegerleri.append(deger)
        }
    }
    
    return sonucDegerleri
}

var ihtiyaclar = ["Kalem","KALEM","Süzgeç", "Kürek","SüzgeÇ","Tabak","Çatal","KürEk","Klavye","TabAK","ÇataL","KLAVYE","tabak","MAsa","masa"]

ihtiyaclar = ihtiyaclariDuzenle(ihtiyaclarim: ihtiyaclar)
print(ihtiyaclar)
