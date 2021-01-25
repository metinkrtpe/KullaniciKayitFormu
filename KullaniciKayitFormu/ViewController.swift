//
//  ViewController.swift
//  KullaniciKayitFormu
//
//  Created by Macintosh HD on 25.01.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var password2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func signupClicked(_ sender: Any) {
        if userText.text == ""{
            let alert = UIAlertController(title: "Hata", message: "Kullanici bulunamadi", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }else if passwordText.text == ""{
            let alert = UIAlertController(title: "Hata", message: "Sifre bulunamadi", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }else if passwordText.text != password2Text.text{
            let alert = UIAlertController(title: "Hata", message: "Sifreler eslesmiyor", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Basarili", message: "Basari ile yapildi", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    

}

