import UIKit

func kenarSayisiniBul(sekil : String) -> Int?  // dönüş tipi optional olduğu için return nil diyebildik. optional olmazsa dönüş tipi int olduğu için değer döndürmemiz gerekir.
{
    
    switch sekil
    {
    case "Altigen":
        return 6
    case "Besgen":
        return 5
    case "Kare":
        return 4
    case "Dikdortgen":
        return 4
    case "Ucgen" :
        return 3
    case "Dogru":
        return 1
    default:
        return nil
    }
    
}

func kenarSayisiniYazdir(sekil : String)
{
    
    if let kenarSayisi = kenarSayisiniBul(sekil: sekil)
    {
        print("\(sekil) \(kenarSayisi) tane kenara sahiptir")
    } else
    {
        print("Bilinmeyen bir şekil girdiniz")
    }
}


let k1 = "Kare"
kenarSayisiniYazdir(sekil: k1)

let k2 = "Geoid"
kenarSayisiniYazdir(sekil: k2)

print("**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--")


//dizinin ilk elemanını getirme

func ilkElemaniGetir(veriler : [String]) -> String?
{
    if veriler.count > 0
    {
        return veriler[0]
    }
    return nil
}

let aramaMotorlari = ["google","yahoo","yandex"]
let kisiler  : [String] = []


if let ilk1 = ilkElemaniGetir(veriler: aramaMotorlari)
{
    print("İlk Arama Motoru : \(ilk1)")
}
else
{
    print("Arama Motoru Dizisi Boş")
}

if let ilk2 = ilkElemaniGetir(veriler: kisiler)
{
    print("İlk Kişi : \(ilk2)")
}
else
{
    print("Kisiler Dizisi Boş ")
}

print("**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--")



//İstersek fonksiyonlara optional durumda olan parametrelerde gönderebiliriz.

func hipotenusBul(kenar1 : Double?, kenar2 : Double?) -> Double?
{
    
    if let kenar1 = kenar1, let kenar2 = kenar2
    {
        
        var hipotenus = pow(kenar1, 2) + pow(kenar2, 2)
        
        hipotenus = hipotenus.squareRoot()
        
        return hipotenus
    }
    
    return nil
}

let str1 : String = "7"
let str2 : String = "24"

var sayi1  = Double(str1)
//var sayi2 : Double = Double(str2)

//Sayı1 değişkeni optional. Çünkü Double fonksiyonu bize optional cinsinden bir değer döndürüyor. Otomatik tip belirleme işlemi devreye giriyor ve sayi1'in tipi Optional double oluyor.

//Eğer bu şekilde yaparsak, sayi2 değişkenine optional olma şansını vermiyoruz. Bu da Double fonksiyonundan dönen değere force unwrap yapmak anlamına geliyor. Böyle bir durumda string verisi hatalı olursa, Double'a dönüştürme işleminde hata alırız.

var sayi2 = Double(str2)

if let hipo = hipotenusBul(kenar1: sayi1, kenar2: sayi2)
{
    print("Kullanıcının Verdiği Kenarlara Göre Hesaplanan Hipotenüs Değeri : \(hipo)")
}
else
{
    print("Kullanıcının Verdiği Kenar Değerleri Hatalı")
}

//Bir parametre optionalsa ona optional olmayan bir değer de gönderebiliriz. Mesela örneğimizde fonksiyon prototipinde optional double şekilde belirtilmiş ama bunları optional olmaktan çıkarıp da gönderebiliriz. Yani sade double olarak da yollayabiliriz.


//Ayrıca istersek parametrelere nil değeri de gönderebiliriz. Fonksiyonların bazı parametrelerine ihtiyaç duymadığımız için değer olarak nil gönderebiliriz.
