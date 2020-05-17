//
//  BaseViewController.swift
//  Tomato
//
//  Created by jashan on 17/05/20.
//  Copyright © 2020 jashan. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func validate(email:String?,password:String?) -> Bool {
        if let _:String = email ,let password:String = password{
            if password.count >= 6{
                return true
            }else{
                self.showToast(message: "error")
            }
        }
        else{
            showToast(message: "Password should be atleast 8 characters long")
        }
        return false
    }
    
    func cacheUser(with uid:String){
        PrefsHelper.savePrefs(key: PrefsHelper.PropertyKey.userID, value: uid)
    }
}

extension UIViewController{
    func showToast(message:String){
        let alert = UIAlertController.init(title: nil, message: message, preferredStyle: .alert)
        
        alert.view.backgroundColor = UIColor.black
        alert.view.alpha = 0.6
        alert.view.layer.cornerRadius = 15
        present(alert, animated: true)
        
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + 2, execute: {
                alert.dismiss(animated: true)
        }
        )
    }
}
