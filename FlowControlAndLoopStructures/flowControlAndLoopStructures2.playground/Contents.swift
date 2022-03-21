import UIKit

// Belirlenen bir sayının asal çarpanlarını bulan program

let number = 12

for s1 in 2...number
{
   
    if number % s1 == 0
    {
       
        var asalMi = true
        
        for s2 in 2..<s1
        {
            if s1 % s2 == 0
            {
                asalMi = false
               
                break
            }
            
        }
   
        if asalMi
        {
            print("Asal Çarpan : \(s1)")
        }
        else
        {
            print("\(s1) sayısı çarpan olmasına rağmen asal çarpan değildir")
        }
    }
}

print("********************************************")


// Belirlenen bir sayının Polidromik sayı oldup olmadığını belirleyen program

//1. Çözüm (Kestirme)
let sayi5 = 214313
let sayiStr = String(sayi5)

var tersSayiStr = ""

for k in sayiStr
{
    tersSayiStr = String(k) + tersSayiStr
}
print(tersSayiStr)
let tersSayi = Int(tersSayiStr)

if tersSayi == sayi5
{
    print("\(sayi5) polidromik bir sayıdır")
}
else
{
    print("\(sayi5) polidromik bir sayı değildir. Çünkü tersi \(tersSayiStr)")
}
print("------------------")

//2. Çözüm (Matematiksel)
let sayiOrijinal = 1441
var basamakSayisi = 0
var sayiKopya = sayiOrijinal
var sayiTers = 0


while sayiKopya > 0
{
    sayiKopya = sayiKopya / 10
    basamakSayisi += 1
}
print(basamakSayisi)

sayiKopya = sayiOrijinal

while sayiKopya > 0
{

    let basamak = sayiKopya % 10
    sayiKopya /= 10


    var basamakDegeri = 1
    for _ in 1..<basamakSayisi
    {
        basamakDegeri *= 10
    }
    sayiTers += basamak * basamakDegeri
    basamakSayisi -= 1

}

if sayiOrijinal == sayiTers
{
    print("\(sayiOrijinal) polidromik bir sayıdır")
} else {
    print("\(sayiOrijinal) polidromik bir sayı değildir. Çünkü tersi \(sayiTers)")
}

print("********************************************")


// Belirlenen bir sayının mükemmel sayı olup olmadığını belirleyen program
//Mükemmel Sayı : Kendisi hariç bütün pozitif bölenlerinin toplamı kendisine eşit olan sayılara mükemmel sayı denir.

let number2 = 6
var toplam = 0
var sayac = 0

for s1 in 1...number2-1
{

    if number2 % s1 == 0
    {
        sayac += 1
        toplam += s1
        print("\(sayac). Çarpan : \(s1)")
    }
}

if number2 == toplam
{
    print("\(number2) mükemmel sayıdır")
}
else
{
    print("\(number2) mükemmel sayı değildir. Çünkü çarpanlarının toplamı : \(toplam)")
}
