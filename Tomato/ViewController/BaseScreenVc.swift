//
//  BaseScreenVc.swift
//  Tomato
//
//  Created by jashan on 03/05/20.
//  Copyright © 2020 jashan. All rights reserved.
//

import Foundation
import UIKit

class BaseScreenVc: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
    
    }
    func navigateToHome(){
        if let homeScreenVc : HomeScreenVC =  storyboard?.instantiateViewController(identifier:"HomeScreen"){
            navigationController?.pushViewController(homeScreenVc, animated: true)

        }
    }
    
    
}
