//
//  LoginScreenVc.swift
//  Tomato
//
//  Created by jashan on 03/05/20.
//  Copyright © 2020 jashan. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class LoginScreenVc: BaseViewController {

    @IBOutlet weak var tvPassword: UITextField!
    @IBOutlet weak var tvEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func loginClicked(_ sender: Any) {
        if super.validate(email: tvEmail.text, password: tvPassword.text) {
            loginUser(email: tvEmail.text!, password: tvPassword.text!)
        }
    }
    
    func loginUser(email:String,password:String){
        Auth.auth().signIn(withEmail: email, password: password, completion: {
            (result,error) -> Void in
            if let authResult = result {
                self.showToast(message: String("Welcome \(authResult.user.email)"))
                super.cacheUser(with: authResult.user.uid)
                self.navigateToHome()
            }
        })
    }
    
    func navigateToHome(){
        if let homeScreen:HomeScreenVC = storyboard?.instantiateViewController(identifier: "HomeScreen"){
            navigationController?.pushViewController(homeScreen, animated: true)
        }
        
    }
    

}
