//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by Samet  Doğan on 14.09.2023.
//

import UIKit

class OyunEkrani: UIViewController {

    @IBOutlet weak var labelOyunEkrani: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelOyunEkrani.text = "Merhaba"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
       // navigationController?.popViewController(animated: true) //pop=geri anlamında - bir önceki sayfaya döner
        navigationController?.popToRootViewController(animated: true) //var olan anasayfaya döner
    }
    

    @IBAction func buttonBitti(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    
}
