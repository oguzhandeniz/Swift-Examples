import UIKit

//Fonksiyona dışarıdan değer yollamak istiyorsak,fonksiyonda string , int gibi parametler tanımlamalıyız.
func mesajVer(mesaj : String)
{
    print("1 Mesajınız Var")
    print("Artık yeni durum getirildi")
    print(mesaj)
}
mesajVer(mesaj: "Bugün maça gelecek misin?")



print("*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*")



//Gelen 2 sayıyı çarpma
func sayilariCarp(sayi1 : Int , sayi2 : Int)
{
    
    let sonuc = sayi1 * sayi2
    print("Sonuç : \(sonuc)")
}
sayilariCarp(sayi1: 28, sayi2: 3)



print("*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*")



//3. Örnek Hesap Makinesi
func hesapMakinesi(sayi1 : Double, sayi2 : Double, yapilacakIslem : String)
{
    
    let islem = yapilacakIslem.lowercased()
    var sonuc : Double = 0
    switch islem
    {
    case "toplama":
        sonuc = sayi1 + sayi2
        print("Girdiğiniz 2 Sayı Toplandı")
        
    case "çıkarma":
        sonuc = sayi1 - sayi2
        print("Girdiğiniz 2 Sayı Birbirinden Çıkarıldı")
        
    case "çarpma":
        sonuc = sayi1 * sayi2
        print("Girdiğiniz 2 Sayı Çarpıldı")
        
    case "bölme":
        sonuc = sayi1 / sayi2
        print("Girdiğiniz 2 Sayı Birbirine Bölündü")
        
    default:
        print("Bilinmeyen bir işlem girdiniz (toplama-çıkarma-çarpma-bölme)")
    }
    print("Sonuç : \(sonuc)")
    
}

hesapMakinesi(sayi1: 45, sayi2: 8, yapilacakIslem: "çarpma")


print("*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*")


//4. örnek yaş analizi
func yasAnaliz(yaslarim : [Int])
{
    
    var minYas : Int = yaslarim[0]
    var maxYas : Int = yaslarim[0]
    for yas in yaslarim
    {
        
        if yas < minYas
        {
            minYas = yas
        }
        if maxYas < yas
        {
            maxYas = yas
        }
    }
    print("Gönderilenler arasında en genç kişinin yaşı : \(minYas)")
    print("Gönderilenler arasında en büyük kişinin yaşı : \(maxYas)")
    print("Aralarındaki Yaş Farkı : \(maxYas-minYas)")
}

var yaslar : [Int] = [21,15,19,36,54,10,71,94,81]
//print(yaslar.min()!)
yasAnaliz(yaslarim: yaslar)



print("*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*")


//bir isim listesinde hangi isimden kaç tane var
func isimSay(isimlerim : [String])
{
    
    var s : [String : Int] = [:]  // key değeri string value değeri int olan boş bir sözlük tanımladık.
    
    for isim in isimlerim
    {
        //isim daha önce kaydedildiyse
        if s[isim] != nil
        {
            s[isim]! += 1
            
        }
        else
        {
            //isim ilk defa kaydediliyorsa
            s[isim] = 1
        }
    }
    
    for isim in s
    {
        print("\(isim.key) isminden \(isim.value) tane var")
        
    }
    
}

var isimler : [String] = ["Ahmet", "Yavuz","Sibel","Hülya","Ahmet","Yavuz", "Caner","Selin","Sibel","Caner","Ahmet","Yavuz","Hülya"]
isimSay(isimlerim: isimler)



print("*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*")



//Örnek  : isimleri ve vize notları bulunan öğrencilerden en başarılı olanı bulma
func enBasariliOgrenciyiBul(sinif : [String : [Float]])
{
    
    var maxOrtalama  : Float = -1.0
    var maxKisi = ""
    
    for kisi in sinif
    {
        let vizeNotu : Float = kisi.value[0]
        let finalNotu : Float = kisi.value[1]
        let ortalama : Float = vizeNotu*0.4 + finalNotu*0.6
        
        if ortalama > maxOrtalama
        {
            maxKisi = kisi.key //max ortalamaya sahip kişinin adını al
            maxOrtalama = ortalama
        }
    }
    
    
    let vizeNotu = sinif[maxKisi]![0]
    let finalNotu = sinif[maxKisi]![1]
    print("""
        Sınıfın En Başarılı Öğrencisinin
        Adı : \(maxKisi)
        Vize Notu  : \(vizeNotu)
        Final Notu : \(finalNotu)
        Ortalamasi : \(maxOrtalama)
    """)
    
}


var sinifNotlari : [String : [Float]] = ["Ayşe"   : [50,60],
                                         "Yasin"  : [40,60],
                                         "Sema"   : [80,90],
                                         "Yılmaz" : [100,20],
                                         "Selin"  : [50,75],
                                         "Caner"  : [95,85]
]
enBasariliOgrenciyiBul(sinif: sinifNotlari)

