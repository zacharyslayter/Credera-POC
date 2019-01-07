//
//  EmployeeSearchViewController.swift
//  Credera-POC
//
//  Created by Natasha Solanki on 1/7/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import UIKit

class EmployeeSearchViewController: UIViewController {

    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        searchTextField.borderStyle = UITextField.BorderStyle.roundedRect
        continueButton.layer.cornerRadius = 5
        continueButton.layer.borderWidth = 1
        continueButton.layer.borderColor = UIColor.black.cgColor
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func continueButtonPressed(_ sender: Any) {
        
    }

}

extension EmployeeSearchViewController : UITextFieldDelegate {
    
    
}

extension EmployeeSearchViewController {

    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(EmployeeSearchViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
   
}
