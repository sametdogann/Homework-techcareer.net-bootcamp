import UIKit

//Karşılaştırma Operatörleri
var a = 40
var b = 50

var x = 90
var y = 80

print("a == b : \(a == b)")
print("a != b : \(a != b)")
print("a > b : \(a > b)")
print("a >= b : \(a >= b)")
print("a < b : \(a < b)")
print("a <= b : \(a <= b)")

print("a > b || x > y : \(a > b || x > y)") //OR(VEYA) false || false : false , diğer durumlarda hep true

print("a > b §§ x > y : \(a > b && x > y)") //AND(VE) true || true : true , diğer durumlarda hep true

//if kullanımı
var yas = 17
var isim = "Mehmet"

if yas >= 18 {
    print("Reşitsiniz")
}else{
    print("Reşit değilsiniz")
}

if isim == "Ahmet" {
    print("Merhaba Ahmet")
}else if isim == "Mehmet" {
    print("Merhaba Mahmet")
}else{
    print("Tanınmayan Kişi")
}

var ka = "admin"
var s = 123456

if ka == "admin" && s == 123456 {
    print("Hoş geldiniz")
}else{
    print("Hatalı Giriş")
}

var sonuc = 10

if sonuc == 10 || sonuc == 20 {
    print("Sonuç 10 veya 20 dir")
}else{
    print("Sonuc 10 veya 20 değildir")
}

var z = 10
var t = 20

z == t ? print("Eşit") : print("Eşit Değil") //Ternary

//Switch
//Kotlin(When)

var gun = 3

switch gun {
case 1: print("Pazartesi")
case 2: print("Salı")
case 3: print("Çarşamba")
case 4: print("Perşembe")
case 5: print("Cuma")
case 6: print("Cumartesi")
case 7: print("Pazar")
default: print("Böyle bir gün yok")
}

//Loop - Döngüler

//1,2,3
for k in 1...3 { //Kotlin 1..3 - for each (mülakatlarda)
    print("Döngü 1: \(k)")
}

//10 ile 20 , 5 er artış
for i in stride(from: 10, through: 20, by: 5) {
    print("Döngü 2 : \(i)")
}

//20 ile 10 , 5 er azalış
for i in stride(from: 20, through: 10, by: -5) {
    print("Döngü 3 : \(i)")
}

//1,2,3
var sayac = 1

while sayac < 4 {//<=3
    print("Döngü 4 : \(sayac)")
    sayac+=1 //sayac = sayac + 1
}
   
for i in 1...5 {
    if i == 3 {
        break
    }
    print("Döngü 5 : \(i)")
}

for i in 1...5 {
    if i == 3 { //3 sonucunu görmeden 1-2-4-5
        continue
    }
    print("Döngü 6 : \(i)")
}

