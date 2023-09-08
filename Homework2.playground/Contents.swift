import UIKit

//1.soru
class SıcaklıkDönüştürücü {
    func derecedenFahrenheita(derece:Double) -> Double {
        let fahrenheit = derece * 1.8 + 32
        return fahrenheit
    }
}

let dönüştürücü = SıcaklıkDönüştürücü()

let dereceDegeri = 25

let fahrenheitDegeri = dönüştürücü.derecedenFahrenheita(derece: Double(dereceDegeri))

print("\(dereceDegeri) derece, \(fahrenheitDegeri) Fahrenheit dereceye eşittir.")


//2.soru
class Dikdortgen {
    
    func cevreHesaplama(uzunluk: Double, genislik: Double) -> Double {
        let cevre = 2 * (uzunluk + genislik)
        return cevre
        
    }
}

let dikdortgen = Dikdortgen()

let uzunluk = 5.0
let genislik = 3.0

let cevre = dikdortgen.cevreHesaplama(uzunluk: uzunluk, genislik: genislik)

print("Dikdörtgenin çevresi: \(cevre)")


//3.soru
class FaktorielHesaplama {
    
    func hesaplama(sayi: Int) -> Int {
        if sayi < 0 {
            return -1
        }else if sayi == 0 || sayi == 1 {
            return 1
        }else {
            var sonuc = 1
            for i in 2...sayi {
                sonuc *= i
            }
            return sonuc
        }
    }
}

let hesaplama = FaktorielHesaplama()

let sayiHesaplama = 5

let fatoriel = hesaplama.hesaplama(sayi: sayiHesaplama)

print("\(sayiHesaplama)! = \(fatoriel)")


//4.soru

class HarfSayaci {
    
    func hesaplaHarfSayisi(kelime: String) -> Int {
        
        let harfA = "a"
        let kelimeDuzenlenmis = kelime.lowercased()
        
        let sayi = kelimeDuzenlenmis.filter { $0 == Character(harfA) }.count
                                            
        return sayi
    }
}

let sayaci = HarfSayaci()

let kelime = "ananas"

let harfSayaci = sayaci.hesaplaHarfSayisi(kelime: kelime)

print("Kelimenin içinde \(harfSayaci) adet 'a' harfi bulunuyor.")


//5.soru
class CokgenHesaplama {
    func hesaplaIcAciToplami(kenarSayisi: Int) -> Int {
        if kenarSayisi < 3 {
            return -1
        }
        let icAciToplami = (kenarSayisi - 2) * 180
        return icAciToplami
    }
}

let hesaplayici = CokgenHesaplama()
let kenarSayisi = 5
let icAciToplami = hesaplayici.hesaplaIcAciToplami(kenarSayisi: kenarSayisi)

if icAciToplami == -1 {
    print("En az 3 kenarlı bir çokgen gereklidir")
}else{
    print("\(kenarSayisi) kenarlı bir çokgenin iç açılar toplamı: \(icAciToplami) derece")
}

//6.soru

class MaasHesaplama {
    
    func hesaplaMaasi(gunSayisi: Int, calismaSaatleri: Int, mesaiSaatleri: Int) -> Double {
        
        let gunlukCalismaSaatleri: Double = 8.0
        let saatlikCalismaUcreti: Double = 10.0
        let saatlikMesaiUcreti: Double = 20.0
        
        if gunSayisi < 0 || calismaSaatleri < 0 || mesaiSaatleri < 0 {
        
            return -1.0
      }
        let toplamCalismaSaatleri = Double(gunSayisi) * gunlukCalismaSaatleri + Double(calismaSaatleri)
        let toplamMesaiSaatleri = Double(mesaiSaatleri)
        
        let calismaUcreti = toplamCalismaSaatleri * saatlikCalismaUcreti
        let mesaiUcreti = toplamMesaiSaatleri * saatlikMesaiUcreti
        let toplamMaas = calismaUcreti + mesaiUcreti
        
        return toplamMaas
        
    }
}

let hesaplayici2 = MaasHesaplama()

let gunSayisi = 20
let calismaSaatleri = 160
let mesaiSaatleri = 10

let maas = hesaplayici2.hesaplaMaasi(gunSayisi: gunSayisi, calismaSaatleri: calismaSaatleri, mesaiSaatleri: mesaiSaatleri)

if maas == -1.0 {
    print("Geçersiz giriş değerleri.")
}else {
    print("Toplam maaş: \(maas) ₺")
}


//7.soru

class UcretHesaplama {
    
    func hesaplaUcret(kotaMiktariGB: Double) -> Double {
        let kotaBaslangicUcreti: Double = 100.0
        let kotaAsimUcreti: Double = 4.0
        let kotaSiniriGB: Double = 50.0
        
        if kotaMiktariGB <= kotaSiniriGB {
            
            return kotaBaslangicUcreti
        }else{
            
            let asimGB = kotaMiktariGB - kotaSiniriGB
            let asimUcreti = asimGB * kotaAsimUcreti
            return kotaBaslangicUcreti + asimUcreti
        }
        
    }
}

let hesaplayici3 = UcretHesaplama()
let kotaMiktarıGB: Double = 60.0
let ucret = hesaplayici3.hesaplaUcret(kotaMiktariGB: kotaMiktarıGB)

print("Kota Ücreti: \(ucret) ₺")
