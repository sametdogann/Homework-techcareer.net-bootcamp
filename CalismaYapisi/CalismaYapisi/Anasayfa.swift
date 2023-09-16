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
        labelAnasayfa.text = String(sayac)
    }

    @IBAction func buttonTikla(_ sender: Any) {
        sayac = sayac + 1
        labelAnasayfa.text = String(sayac)
        if sayac ==  5 {
            performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
        }
    }
    
    @IBAction func buttonBASLA(_ sender: Any) {
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı")
    }
}

