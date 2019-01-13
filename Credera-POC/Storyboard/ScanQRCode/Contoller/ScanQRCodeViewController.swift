//
//  ScanQRCodeViewController.swift
//  Credera-POC
//
//  Created by Melanie Cummings on 1/8/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import Foundation
import UIKit

class ScanQRCodeViewController: UIViewController {
    
    @IBOutlet var cantAccessCodeButton: UIButton!
    @IBOutlet var backButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        backButton.layer.cornerRadius = 5
        cantAccessCodeButton.layer.cornerRadius = 5
        
        backButton.layer.borderWidth = 2
        cantAccessCodeButton.layer.borderWidth = 2
        
        cantAccessCodeButton.layer.borderColor = Constants.ColorScheme.lipstick.cgColor
        backButton.layer.borderColor = Constants.ColorScheme.lipstick.cgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backSelected(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cantAccessCodeSelected(_ sender: Any){
        /// TODO navigate to cant access view
    }
}
