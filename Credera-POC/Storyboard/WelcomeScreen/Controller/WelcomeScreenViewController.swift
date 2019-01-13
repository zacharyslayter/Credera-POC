//
//  WelcomeScreenViewController.swift
//  Credera-iOS
//
//  Created by Melanie Cummings on 1/7/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import Foundation
import UIKit

class WelcomeScreenViewController: UIViewController {
    
    
    @IBOutlet var interviewButton: UIButton!
    @IBOutlet var meetingButton: UIButton!
    @IBOutlet var personButton: UIButton!
    @IBOutlet var deliveryButton: UIButton!
    @IBOutlet var otherButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        interviewButton.layer.borderColor = Constants.ColorScheme.lipstick.cgColor
        meetingButton.layer.borderColor = Constants.ColorScheme.lipstick.cgColor
        personButton.layer.borderColor = Constants.ColorScheme.lipstick.cgColor
        deliveryButton.layer.borderColor = Constants.ColorScheme.lipstick.cgColor
        otherButton.layer.borderColor = Constants.ColorScheme.lipstick.cgColor
        
        interviewButton.layer.borderWidth = 2
        meetingButton.layer.borderWidth = 2
        personButton.layer.borderWidth = 2
        deliveryButton.layer.borderWidth = 2
        otherButton.layer.borderWidth = 2
        
        interviewButton.layer.cornerRadius = 5
        meetingButton.layer.cornerRadius = 5
        personButton.layer.cornerRadius = 5
        deliveryButton.layer.cornerRadius = 5
        otherButton.layer.cornerRadius = 5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func interviewSelected(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "First", bundle:nil)
        let interviewVC = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.navigationController?.pushViewController(interviewVC, animated: true)
    }
    
    @IBAction func meetingSelected(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "First", bundle:nil)
        let interviewVC = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.navigationController?.pushViewController(interviewVC, animated: true)
    }
    
    @IBAction func specificPersonSelected(_ sender: Any) {
        let storyboard = UIStoryboard(name: "EmployeeSearch", bundle: nil)
        let employeeSearchVC = storyboard.instantiateViewController(withIdentifier: "EmployeeSearchViewController") as! EmployeeSearchViewController
        employeeSearchVC.searchType = .specificPerson
        navigationController?.pushViewController(employeeSearchVC, animated: true)
    }
    
    @IBAction func deliverySelected(_ sender: Any) {
        let storyboard = UIStoryboard(name: "EmployeeSearch", bundle: nil)
        let employeeSearchVC = storyboard.instantiateViewController(withIdentifier: "EmployeeSearchViewController") as! EmployeeSearchViewController
        employeeSearchVC.searchType = .delivery
        navigationController?.pushViewController(employeeSearchVC, animated: true)
    }
    
    @IBAction func otherSelected(_ sender: Any) {
        let storyboard = UIStoryboard(name: "GuestNameInput", bundle: nil)
        let guestInputVC = storyboard.instantiateViewController(withIdentifier: "GuestNameInputController") as! GuestNameInputController
        guestInputVC.guestInputType = .other
        navigationController?.pushViewController(guestInputVC, animated: true)

//        let storyBoard : UIStoryboard = UIStoryboard(name: "ThankYou", bundle:nil)
//        let thankYouVC = storyBoard.instantiateViewController(withIdentifier: "ThankYouViewController") as! ThankYouViewController
//        self.navigationController?.pushViewController(thankYouVC, animated: true)
    }
}

