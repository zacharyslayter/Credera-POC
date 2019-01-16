//
//  EmployeeSearchViewController.swift
//  Credera-POC
//
//  Created by Natasha Solanki on 1/7/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import UIKit
import Foundation
import SearchTextField


class EmployeeSearchViewController: UIViewController {

    
    @IBOutlet var searchTextField: SearchTextField!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    public var searchType: Constants.visitPurpose = .specificPerson
    
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
        switch searchType {
        case .delivery:
            questionLabel.text = "Who is the recipent of your delivery?"
        default:
            questionLabel.text = "Who are you meeting with?"
        }
        continueButton.layer.cornerRadius = 5
        continueButton.layer.borderWidth = 1
        continueButton.layer.borderColor = Constants.ColorScheme.warmGray.cgColor
        continueButton.isEnabled = false
        self.hideKeyboardWhenTappedAround()
        
        //Temporary
        searchTextField.filterStrings(["Natasha Solanki", "Zachary Slayter", "Melanie Cummings","Rachel West"])
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
                continueButton.backgroundColor = Constants.ColorScheme.lipstick
                continueButton.isEnabled = true
            } else {
                continueButton.backgroundColor = Constants.ColorScheme.warmGray
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

