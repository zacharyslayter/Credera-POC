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
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func meetingSelected(_ sender: Any) {
        //Go to the who are you meeting with screen
    }
    
    @IBAction func specificPersonSelected(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "First", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func deliverySelected(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "First", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func otherSelected(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "First", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
}
