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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func interviewSelected(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "First", bundle:nil)
        let interviewVC = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.navigationController?.pushViewController(interviewVC, animated: true)
    }
    
    @IBAction func meetingSelected(_ sender: Any) {
        //Go to the who are you meeting with screen
    }
    
    @IBAction func specificPersonSelected(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "First", bundle:nil)
        let personVC = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.navigationController?.pushViewController(interviewVC, animated: true)
    }
    
    @IBAction func deliverySelected(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "First", bundle:nil)
        let deliveryVC = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.navigationController?.pushViewController(interviewVC, animated: true)
    }
    
    @IBAction func otherSelected(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "First", bundle:nil)
        let otherVC = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.navigationController?.pushViewController(interviewVC, animated: true)
    }
}
