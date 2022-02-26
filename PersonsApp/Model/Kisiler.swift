//
//  Kisiler.swift
//  PersonsApp
//
//  Created by Murat Sağlam on 25.02.2022.
//

import Foundation


// Modeli Oluşturuyoruz
class Kisiler
{
    
    var kisi_id:String?
    var kisi_ad:String?
    var kisi_tel:String?
    
    init()
    {
        
    }
    
    init(kisi_id:String?,kisi_ad:String?,kisi_tel:String?)
    {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_tel = kisi_tel
        
    }
    
}
