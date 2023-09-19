//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Samet  Doğan on 14.09.2023.
//

import UIKit

class Anasayfa: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    
    var sayac = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Sayfa açıldığında bir kere çalışır.
        print("Yaşam Döngüsü : viewDidLoad")
        labelAnasayfa.text = String(sayac)
    }

    override func viewWillAppear(_ animated: Bool) {
        //Sayfa her göründüğünde çalışır.
        //Sayfaya geri dönüşü takip edebilirsiniz.
        print("Yaşam Döngüsü : viewWillDidLoad")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        //Sayfa her görünmez olduğunda çalışır.
        print("Yaşam Döngüsü : viewDidDissappear")
    }
    
    @IBAction func buttonTikla(_ sender: Any) {
        sayac = sayac + 1
        labelAnasayfa.text = String(sayac)
        if sayac ==  5 {
            //performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
        }
    }
    
    @IBAction func buttonBASLA(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraninaGecis çalıştı")
            
            if let veri = sender as? Kisiler {//Any(Superclass) > String(Subclass)
                print("Veri : \(veri)")
                let gidilecekVC = segue.destination as! OyunEkrani  //UIViewController > OyunEkrani // as'in yanında soru işareti veya ünlem varsa downcasting, yoksa upcasting
                gidilecekVC.kisiNesnesi = veri
            }
        }
    }
    
    @IBAction func buttonEkle(_ sender: Any) {
        print("Ekle tıklandı")
    }
    
    @IBAction func buttonCikis(_ sender: Any) {
        print("Çıkış tıklandı")
    }
    
}

