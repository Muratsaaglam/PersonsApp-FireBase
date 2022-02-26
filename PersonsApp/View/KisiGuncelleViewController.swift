//
//  KisiGuncelleViewController.swift
//  PersonsApp
//
//  Created by Murat Sağlam on 23.02.2022.
//

import UIKit
import Firebase

class KisiGuncelleViewController: UIViewController {


    @IBOutlet weak var kisiAdGuncelleText: UITextField!
    
    @IBOutlet weak var kisiTelGuncelleText: UITextField!
    
    var kisi:Kisiler?
    var ref:DatabaseReference!

    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        
        ref = Database.database().reference()

        
        if let k = kisi
        {
            kisiAdGuncelleText.text = k.kisi_ad
            kisiTelGuncelleText.text = k.kisi_tel
            
        }

    }
    

    @IBAction func guncelle(_ sender: Any) {
        
        if let k = kisi, let ad = kisiAdGuncelleText.text, let tel = kisiTelGuncelleText.text
        {
            kisiGuncelle(kisi_id:k.kisi_id!,kisi_ad:ad,kisi_tel:tel)
        }
        
    }
    
    
    func kisiGuncelle(kisi_id:String,kisi_ad:String,kisi_tel:String)
    {

        ref.child("kisiler").child(kisi_id).updateChildValues(["kisi_ad" : kisi_ad, "kisi_tel":kisi_tel])
        
    }
    
    
    
    
}
