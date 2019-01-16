//
//  ErrorScreenViewController.swift
//  Credera-POC
//
//  Created by Melanie Cummings on 1/8/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import Foundation
import UIKit

class ErrorScreenViewController: UIViewController {
    
    @IBOutlet var backToHomeButton: CustomButton!
    @IBOutlet var backButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backToHomeSelected(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func backButtonSelected(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

