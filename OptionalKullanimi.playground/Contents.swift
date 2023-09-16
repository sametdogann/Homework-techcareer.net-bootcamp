import UIKit

//Optional - Nullable - Null Safety (KISA AMA ÖNEMLİ KONU)
//nill , null , NaN (biz nill kullanıyoruz)

//bir değişken null olduğunda uygulama çöker ve kapanır.

//? , !

var str = "Hello"
//Tanımlama
var mesaj:String? // ? koyunca düzeldi = nill vardı sildik

mesaj = "Merhaba" //bunu boşa çıkarırsak verilen mesaj: mesaj nil'dir oluyor

if mesaj != nil {
    print(mesaj!) //unwrapped (bu önemli - ! koyduk)
}else{
    print("mesaj nil'dir")
}

//Optional binding
if let temp = mesaj { //nil ise false , nil değilse true , mesajı temp'e aktardık
    print(temp) //otomatik olarak unwrapped olacak
}else{
    print("mesaj nil'dir")
}

if var temp = mesaj {
    print(temp)
    temp = "Nasılsın"
    print(temp)
}else{
    print("mesaj nil'dir")
}

//mülakatlarda bu üsttekilerden sorular gelir ***





