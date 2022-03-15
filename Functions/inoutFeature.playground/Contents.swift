import UIKit


func degerTakas ( s1 : inout Int, s2  : inout Int)
{
    
    var temp = s1
    s1 = s2
    s2 = temp
}

var n1 : Int = 4
var n2 : Int = 6

print("Eski n1 değeri : \(n1)")
print("Eski n2 değeri : \(n2)")

degerTakas(s1: &n1, s2: &n2)
print("Yeni n1 değeri : \(n1)")
print("Yeni n2 değeri : \(n2)")

print("---------**-----------**-----------**---------------")

func ikiyeKatla(s1 : inout Int, s2 : inout Int)
{
    
    
    s1 = s1 * 2
    s2 *= 2
    
}
func ikiyeKatla(sayilar : inout [Int])
{
    
    
    
    for i in (0...(sayilar.count-1))
    {
        
        sayilar[i] *= 2
        
    }
    
}

var s1 = 5 , s2 = 6, s3 = 4
ikiyeKatla(s1: &s1, s2: &s2)
print("1. sayının değeri : \(s1)")
print("2. sayının değeri : \(s2)")
var degerler = [2,4,s3]
ikiyeKatla(sayilar: &degerler)

for deger in degerler
{
    print(deger)
}
print(s3)
