import UIKit

//array ile set arasındaki fark çok önemli mülakatta: çalışması benzer - set içeriğini karıştırıyor (spotify gibi şey yapıyosun ama içeriğini random olarak karıştırıyor. quiz uygulamasında işe yarar.sıra yok. 2.farklılık: bir tane aynı elemandan olur, 2.defa kullanamazsın.)

//slyatta array - set dictionary var

var numaralar = [10,20,30] // 0 -> 10, 1 -> 20,2 -> 30
var meyveler = [String]() //Boş array

//Veri Ekleme
meyveler.append("Elma") //0. appen = add
meyveler.append("Muz") //1.
meyveler.append("Kiraz") //2.
print(meyveler)

//Güncelleme
meyveler[0] = "Yeni Elma"
print(meyveler)

//Insert
meyveler.insert("Portakal", at: 1)
print(meyveler)

//Veri Okuma
let meyve = meyveler[2]
print(meyve)

print("Boş kontrol : \(meyveler.isEmpty)")
print("Boyut : \(meyveler.count)") //size
print("İlk eleman : \(meyveler.first!)") //0
print("Son eleman : \(meyveler.last!)") // son indeks = (meyveler.count - 1)
print("İçeriyor mu : \(meyveler.contains("Muz"))")
print("Indeks bulma : \(meyveler.firstIndex(of: "Kiraz")!)")

for meyve in meyveler { //for each
    print("Sonuç : \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated() { //Kotlin withIndex()
    print("\(indeks). -> \(meyve)")
}

meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll() //clear
print(meyveler)

//Nesne tabanli
class Yemekler {
    var id:Int?
    var ad:String?
    var fiyat:Int?
    var puan: Double?
    
    init(id:Int,ad:String,fiyat:Int,puan:Double) {
        
        self.id = id
        self.ad = ad
        self.fiyat = fiyat
        self.puan = puan
    }
}


var y1 = Yemekler(id: 1, ad: "Köfte", fiyat: 80, puan: 4.6)
var y2 = Yemekler(id: 2, ad: "Ayran", fiyat: 30, puan: 3.8)
var y3 = Yemekler(id: 3, ad: "Tramisu", fiyat: 60, puan: 4.3)

var yemeklerListesi = [Yemekler]() //class belirttik
yemeklerListesi.append(y1)
yemeklerListesi.append(y2)
yemeklerListesi.append(y3)

for y in yemeklerListesi {
    print("Id : \(y.id!) - Ad :  \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

//Filtreleme - mevcut listeden belli değerler çekme: örnek: alışveriş 100-500 tl arası
print("--------Filtreleme 1 -------")
var f1 = yemeklerListesi.filter({ $0.fiyat! > 50 && $0.fiyat! < 70 })
for y in f1 {
    print("Id : \(y.id!) - Ad :  \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

print("--------Filtreleme 2 -------")
var f2 = yemeklerListesi.filter({ $0.ad!.contains("an") })
for y in f2 {
    print("Id : \(y.id!) - Ad :  \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

//Sorting - Sıralama
print("--------Fiyat : Azalan -------")
var s1 = yemeklerListesi.sorted(by: {$0.fiyat! > $1.fiyat!}) //Descending : DESC
for y in s1 {
    print("Id : \(y.id!) - Ad :  \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

print("--------Puan : Artan -------")
var s3 = yemeklerListesi.sorted(by: {$0.puan! < $1.puan!}) //Descending : DESC
for y in s3 {
    print("Id : \(y.id!) - Ad :  \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

print("--------Puan : Artan -------")
var s4 = yemeklerListesi.sorted(by: {$0.puan! < $1.puan!}) //Descending : DESC
for y in s4 {
    print("Id : \(y.id!) - Ad :  \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

print("--------Ad : Artan -------")
var s5 = yemeklerListesi.sorted(by: {$0.ad! < $1.ad!}) //Descending : DESC
for y in s5 {
    print("Id : \(y.id!) - Ad :  \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

print("--------Ad : Artan -------")
var s6 = yemeklerListesi.sorted(by: {$0.ad! < $1.ad!}) //Descending : DESC
for y in s6 {
    print("Id : \(y.id!) - Ad :  \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

