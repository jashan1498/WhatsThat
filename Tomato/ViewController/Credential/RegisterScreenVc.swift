//
//  RegisterScreenVc.swift
//  Tomato
//
//  Created by jashan on 03/05/20.
//  Copyright © 2020 jashan. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class RegisterScreenVc: BaseViewController {
    
    @IBOutlet weak var tvEmail: UITextField!
    
    @IBOutlet weak var tvPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onRegisterClicked(_ sender: Any) {
        if(super.validate(email: tvEmail.text, password: tvPassword.text)){
            register(email: tvEmail!.text!,password: tvPassword!.text!)
        }
    }
    
    func register(email:String,password:String){
        Auth.auth().createUser(withEmail: email, password: password,completion: {(result,error) -> Void in
            if let authResult = result{
                print(authResult.user.email)
            }
        })}
}

