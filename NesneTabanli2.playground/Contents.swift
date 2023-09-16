import UIKit

class Ev {
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int){
        self.pencereSayisi = pencereSayisi
    }
    
}

class Saray : Ev {
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int,pencereSayisi:Int){
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: 10)
    }
}

class Villa : Ev {
    var garajVarmi:Bool?
    
    init(garajVarmi:Bool,pencereSayisi:Int){
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
    
}

let topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bogazVilla = Villa(garajVarmi: true, pencereSayisi: 50)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVilla.garajVarmi!)
print(bogazVilla.pencereSayisi!)

//Upcasting
//Saray > Ev
let ev = Saray(kuleSayisi: 3, pencereSayisi: 100) as Ev

//Downcasting
//Ev > Saray
let saray = Ev(pencereSayisi: 40) as? Saray //as! Saray

//Tip control
if ev is Ev { //instanceOf
    print("Nesne ev sınıfından türetilmiştir")
}else{
    print("Nes ev sınıfından türetilmemiştir")
}


//Override Kullanımı
class Hayvan {
    func sesCikar(){
        print("Sesim yok")
    }
}

class Memeli : Hayvan {
    
    }


class Kedi : Memeli {
    override func sesCikar() {
        print("Miyav Miyav")
    }
}

class Kopek : Memeli {
    override func sesCikar() {
        print("Hav Hav")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar() //kalıtım yok, kendi metoduna erişti
memeli.sesCikar() //kalıtım var, üst sınıfın metoduna erişti
kedi.sesCikar() //kalıtım var, kendi metoduna erişti
kopek.sesCikar() //kalıtım var, kendi metoduna erişti

//protocol - Interface : ile mesela sepete ekle, 2 ayrı class var

protocol MyProtocol {
    var degisken:Int {get set }
    
    func metod1()
    
    func metod2() -> String
}

class ClassA: MyProtocol {
    var degisken: Int = 10
    
    func metod1() {
        print("Metod 1 çalıştı")
    }
    
    func metod2() -> String {
        return "Metod 2 çalıştı"
    }
    
}

let classA = ClassA()
print(classA.degisken)
classA.metod1()
print(classA.metod2())

//Extension
extension Int {
    func carp(sayi:Int) -> Int {
        return self * sayi
    }
}

let sonuc = 5.carp(sayi: 3)
print("Sonuç : \(sonuc)")

//Closure
let ifade = {
    print("Closure çalıştı")
}

ifade()

//array ile set arasındaki fark çok önemli mülakatta: çalışması benzer - set içeriğini karıştırıyor (spotify gibi şey yapıyosun ama içeriğini random olarak karıştırıyor. quiz uygulamasında işe yarar.sıra yok. 2.farklılık: bir tane aynı elemandan olur, 2.defa kullanamazsın.)

//slyatta array - set dictionary var


