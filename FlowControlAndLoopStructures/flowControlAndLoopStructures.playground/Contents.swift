import UIKit

// Sayı basamaklarını yazdıran örnek
var num  : Int = 194
while num > 0
{
    let basamak = num % 10
    num = num / 10
    print(basamak)
}

print("********************************************")
// Verilen kelimenin tersten yazılışının kendisiyle aynı olup olmadığını kontrol eden örnek
var kelime = "kabak"
var ters = ""
for karakter in kelime
{
    ters = String(karakter) + ters
}
print("Kelime : \(kelime)")
print("Tersten yazılışı : \(ters)")

if kelime == ters
{
    print("Kelimenin tersten yazılışı kendisiyle aynıdır.")
}
else {
    print("Kelimenin tersten yazılışı kendisinden farklıdır.")
}

print("********************************************")

// Bir sayının faktöriyelini alan program
//For döngüsü ile ;
var sayi : Int = 5
var faktoriyel : Int = 1

for deger in 1...sayi
{
    faktoriyel *= deger
}
print("\(sayi)! = \(faktoriyel)")

//While döngüsü ile ;
var i : Int = 1
faktoriyel = 1

while i <= sayi
{
    faktoriyel *= i
    i += 1
}
print("\(sayi)! = \(faktoriyel)")

print("********************************************")

// Asal sayı örneği

var asalSayi : Int = 2
var asalMi : Bool = true

for i in 2..<(asalSayi)
{
    print(i)
    if asalSayi % i == 0
    {
        asalMi = false
        print("\(asalSayi) sayisi \(i) sayisina tam bölünmektedir.")
        break
    }
}

if asalMi == false
{
    print("\(asalSayi) asal değildir.")
}
else
{
    print("\(asalSayi) asaldir.")
}


print("********************************************")
// 1 ile 100 arasındaki asal sayilar

for sayi3 in 2...100
{
    var asalMi2 = true
    
    for s1 in 2..<sayi3
    {
        if sayi3 % s1 == 0
        {
            asalMi2 = false
            break
        }
    }
    if asalMi2
    {
        print("\(sayi3) asaldır.")
    }
    
}

print("********************************************")

// Belirtilen uzunluktaki fibonacci serisini ekrana yazdıran program
// Fibonacci serisi : 0,1,1,2,3,5,8,13,21,34,55.......

print("FIBONACCI SERISI")

var fibUzunluk : Int = 15
var say1 : Int = 0
var say2 : Int = 1
print(say1)
print(say2)

var j = 2

while j < fibUzunluk
{
    let sonrakiSayi = say1 + say2
    say1 = say2
    say2 = sonrakiSayi
    print(say2)
    j += 1
}

print("********************************************")


// 1 - 10 arası sayıların tek - çift olduğunu if-else kullanmadan kontrol eden program

sayilarinGetirilmesi: for x in 1...10
{
    tekCiftKontrol: switch x % 2
    {
        case 0 : print("\(x) çifttir")
        default : print("\(x) tektir")
    }
}

print("********************************************")
