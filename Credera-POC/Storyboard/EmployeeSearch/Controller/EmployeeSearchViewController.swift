//
//  EmployeeSearchViewController.swift
//  Credera-POC
//
//  Created by Natasha Solanki on 1/7/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import UIKit
import Foundation

class EmployeeSearchViewController: UIViewController {

    
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet weak var continueButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(EmployeeSearchViewController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(EmployeeSearchViewController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
    }
    
    func setupUI() {
        searchTextField.borderStyle = UITextField.BorderStyle.roundedRect
        searchTextField.layer.borderColor = Constants.ColorScheme.warmGray.cgColor
        continueButton.buttonColor = Constants.ColorScheme.warmGray.cgColor
        continueButton.borderColor = Constants.ColorScheme.warmGray.cgColor
        continueButton.isEnabled = false
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func continueButtonPressed(_ sender: Any) {
        
    }

    @IBAction func onBackPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

extension EmployeeSearchViewController : UITextFieldDelegate {
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var currentText: NSString = textField.text as NSString? ?? ""
        currentText = currentText.replacingCharacters(in: range, with: string) as NSString
        
        if textField == searchTextField {
            if !String(currentText).isEmpty {
                continueButton.buttonColor = Constants.ColorScheme.lipstick.cgColor
                continueButton.isEnabled = true
            } else {
                continueButton.buttonColor = Constants.ColorScheme.warmGray.cgColor
                continueButton.isEnabled = false
            }
        }
        
        return true;
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
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
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height/2
            }
        }
    }
        
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }

}

