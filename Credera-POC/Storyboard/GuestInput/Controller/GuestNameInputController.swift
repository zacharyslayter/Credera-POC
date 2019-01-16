//
//  GuestNameInputController.swift
//  Credera-POC
//
//  Created by Natasha Solanki on 1/8/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import UIKit
import Foundation

class GuestNameInputController: UIViewController {

    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var continueButton: CustomButton!
    public var guestInputType: Constants.visitPurpose = .interview
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(GuestNameInputController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(GuestNameInputController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
    }
    func setupUI() {
        nameTextField.borderStyle = UITextField.BorderStyle.roundedRect
        nameTextField.layer.borderColor = Constants.ColorScheme.warmGray.cgColor
        
        switch guestInputType {
        case .other:
            inputLabel.text = "Please enter your name, and we will let someone know you're here."
        default:
            inputLabel.text = "No problem! Please enter your name."
        }

        continueButton.setEnabled(enabled: false)
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func continueButtonPressed(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "ThankYou", bundle:nil)
        let thankYouVC = storyBoard.instantiateViewController(withIdentifier: "ThankYouViewController") as! ThankYouViewController
        self.navigationController?.pushViewController(thankYouVC, animated: true)
    }
    
    
    @IBAction func onBackPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

    

}
extension GuestNameInputController : UITextFieldDelegate {
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var currentText: NSString = textField.text as NSString? ?? ""
        currentText = currentText.replacingCharacters(in: range, with: string) as NSString
        
        if textField == nameTextField {
            if !String(currentText).isEmpty {
                continueButton.setEnabled(enabled: true)
            } else {
                continueButton.setEnabled(enabled: false)
            }
        }
        
        return true;
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
}

extension GuestNameInputController {
    
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
