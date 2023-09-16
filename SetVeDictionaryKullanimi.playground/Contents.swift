import UIKit

//Set - HashSet

var meyveler = Set<String>()

//Veri ekleme
meyveler.insert("Elma")
meyveler.insert("Karpuz")
meyveler.insert("Muz")
print(meyveler) //içeriği karıştırdı

meyveler.insert("Amasya Elması")
print(meyveler)

print("Boyut : \(meyveler.count)")
print("Boş kontrol : \(meyveler.isEmpty)")

for meyve in meyveler {
    print("Sonuç : \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated() {
    print("\(indeks). -> \(meyve)")
}

meyveler.remove("Muz")
print(meyveler)

var indeks = meyveler.firstIndex(of: "Elma")
meyveler.remove(at: indeks!)
print(meyveler)

meyveler.removeAll()
print(meyveler)

//Dictionary - Map - HashMap
//Json veri modeli

var iller = [Int:String]()

//Veri ekleme
iller[16] = "Bursa"
iller[34] = "İstanbul"
print(iller)

//Güncelleme
iller[16] = "Yeni Bursa"
print(iller)

//Veri okuma
let il = iller[34]
print(il!)

for (anahtar,deger) in iller {
    print("\(anahtar) -> \(deger)")
}

iller.removeValue(forKey: 16)
print(iller)
