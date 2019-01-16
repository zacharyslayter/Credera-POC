//
//  CustomButton.swift
//  Credera-POC
//
//  Created by Melanie Cummings on 1/14/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 5 {
        didSet {
            setCornerRadius(value: cornerRadius)
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 1 {
        didSet {
            setBorderWidth(value: borderWidth)
        }
    }
    
    @IBInspectable var borderColor: CGColor = Constants.ColorScheme.lipstick.cgColor {
        didSet {
            setBorderColor(value: borderColor)
        }
    }
    
    @IBInspectable var buttonColor: CGColor = UIColor.white.cgColor {
        didSet {
            setButtonColor(value: buttonColor)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func sharedInit() {
        setCornerRadius(value: cornerRadius)
        setBorderWidth(value: borderWidth)
        setBorderColor(value: borderColor)
    }
    
    func setCornerRadius(value: CGFloat) {
        layer.cornerRadius = value
    }
    
    func setBorderWidth(value: CGFloat) {
        layer.borderWidth = value
    }
    
    func setBorderColor(value: CGColor) {
        layer.borderColor = value
    }
    
    func setButtonColor(value: CGColor){
        layer.backgroundColor = value
    }
    
    func setEnabled(enabled: Bool) {
        self.setBorderColor(value: enabled ? Constants.ColorScheme.lipstick.cgColor : Constants.ColorScheme.warmGray.cgColor)
        self.setButtonColor(value: enabled ? Constants.ColorScheme.lipstick.cgColor : Constants.ColorScheme.warmGray.cgColor)
        self.isEnabled = enabled
    }

}
