import UIKit

//Değişken Oluşturma
var ogrenciAdi = "Ahmet"
var ogrenciYas = 18
var ogrenciBoy = 1.78
var ogrenciBasharf = "A"
var ogrenciDevamEdiyorMu = true

print(ogrenciAdi)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasharf)
print(ogrenciDevamEdiyorMu)

var urunId:Int = 3416
var urunAdi:String = "Kol Saati"
var urunAdet:Int = 100
var urunFiyat:Double = 149.99
var urunTedarikci:String = "Rolex"

print("Ürün id : \(urunId)")
print("Ürün adı : \(urunAdi)")
print("Ürün adet : \(urunAdet)")
print("Ürün fiyat : \(urunFiyat) ₺")
print("Ürün tedarikci : \(urunTedarikci)")

//Constant - Sabit
//Swift(let)

var sayi = 10
print(sayi)
sayi = 99
print(sayi)

let numara = 100
print(numara)
//numara = 200 - uyarı veriyor, sayı sabit 100 oluyor sadece

//Tür Dönüşümü
//Type casting

//Sayısaldan sayısala
var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)
//56.78'in küsaratını sildi, 56 olarak sonuç veriyor

//Sayısaldan metine
var sonuc3 = String(i)//"42"
var sonuc4 = String(d)//56.78
print(sonuc3)
print(sonuc4)

//Metinden sayısala
var yazi = "34"

if var sonuc5 = Int(yazi) {
    print(sonuc5)
}else {
    print("Dönüşüm hatası")
}

//34t yazarsak else kısmı çalıştı ve "dönüşüm hatası" yazısını aldık, ama sadece 34 olunca if kısmı çalıştı ve 34 gözüktü

