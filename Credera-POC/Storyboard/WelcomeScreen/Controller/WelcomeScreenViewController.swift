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
    
    
    @IBOutlet var interviewButton: CustomButton!
    @IBOutlet var meetingButton: CustomButton!
    @IBOutlet var personButton: CustomButton!
    @IBOutlet var deliveryButton: CustomButton!
    @IBOutlet var otherButton: CustomButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
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
 
    }
}

