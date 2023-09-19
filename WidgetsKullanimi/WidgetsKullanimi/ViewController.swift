//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Samet  Doğan on 17.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    
    @IBOutlet weak var labelSwitch: UILabel!
    @IBOutlet weak var mSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if mSwitch.isOn {
            labelSwitch.text = "AÇIK"
        }else{
            labelSwitch.text = "KAPALI"
        }
        
    }

    @IBAction func buttonOku(_ sender: Any) {
        if let alinanVeri = TextFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    
    
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if sender.isOn {
            labelSwitch.text = "AÇIK"
        }else{
            labelSwitch.text = "KAPALI"
        }
    }
    @IBAction func buttonGöster(_ sender: Any) {
        print("Switch Durum : \(mSwitch.isOn)")
    }
}



imageView.image = UIImage(named: "mutlu_resim")
imageView.image = UIImage(named: "uzgun_resim")


