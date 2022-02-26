//
//  KisiEkleViewController.swift
//  PersonsApp
//
//  Created by Murat Sağlam on 23.02.2022.
//

import UIKit
import Firebase

class KisiEkleViewController: UIViewController {
    
    @IBOutlet weak var kisiAdTextField: UITextField!
    @IBOutlet weak var kisiTelTextField: UITextField!
    
    var ref:DatabaseReference!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        
    }
    
    
    @IBAction func ekle(_ sender: Any) {
        
        
        if kisiAdTextField.text == "" && kisiTelTextField.text == ""
        {
            
            makeAlert(title: "Error", message: "Kullanıcı Adı ve Tel Boş Geçilemez")
            
        }
        else
        {
            
            let ad = kisiAdTextField.text!
            let tel = kisiTelTextField.text!
            kisiEkle(kisi_ad:ad,kisi_tel:tel)
            
        }
        
    }
    
    func kisiEkle(kisi_ad:String,kisi_tel:String)
    {
        let dict:[String:Any] = ["kisi_id":"","kisi_ad":kisi_ad,"kisi_tel":kisi_tel]
        let newRef = ref.child("kisiler").childByAutoId()
        
        newRef.setValue(dict)
    }
    
    
    func makeAlert(title: String, message: String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}
