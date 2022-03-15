import UIKit

//Örnek -1 Basamakları Bulma

func basamaklariBul(sayi : Int) -> [Int]
{
    
    print("basamaklariBul(\(sayi)) Başladı")
    if sayi >= 10
    {
        // sayının hala basamaklarına ayrılması gerekiyor
        
        let ilkBasamak = basamaklariBul(sayi: sayi / 10)
        let sonBasamak = sayi % 10
        print("basamaklariBul(\(sayi)) ilk Basamak : \(ilkBasamak)")
        print("basamaklariBul(\(sayi)) son Basamak : \(sonBasamak)")
        print("basamaklariBul(\(sayi)) Fonksiyonu Bitti")
        return ilkBasamak + [sonBasamak]
    }
    else
    {
        //eğer sayı 10'dan küçük tek basamak kalmıştır. Öyleyse o basamağı tek elemanlı bir dizi olarak geri döndürmeliyiz
        print("basamaklariBul(\(sayi)) fonksiyonunda \(sayi) değeri geriye döndürüldü")
        return [sayi]
        
    }
    
}

var deger : Int = 129

print(basamaklariBul(sayi: deger))

print("----------------------------------------------------------------------")

//Örnek -1 Recursive Olmadan Çözüm

var basamaklar : [Int] = [Int]()

while deger != 0
{
    
    //bir sayının 10'a modu son basamağı verir
    let sonBasamak : Int = deger % 10
    basamaklar.append(sonBasamak)
    deger = deger / 10
}
print(basamaklar)


print("----------------------------------------------------------------------")

//Örnek -2 Üs Alma

func usAl(x : Int , y : Int) -> Int
{
    
    
    if y == 0 {
        return 1
    }
    else
    {
        return x * usAl(x: x, y: y - 1)
    }
    
}

print(usAl(x: 2, y: 6))

func ebobBul(sayi1 : Int , sayi2 : Int) -> Int {
    
    if sayi2 == 0
    {
        return sayi1
    }
    else
    {
        if sayi1 > sayi2 {
            return ebobBul(sayi1: sayi1 - sayi2, sayi2: sayi2)
        }
        else
        {
            return ebobBul(sayi1: sayi1, sayi2: sayi2 - sayi1)
        }
    }
    
    
}
print(ebobBul(sayi1: 64, sayi2: 128))
