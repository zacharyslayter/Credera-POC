//
//  ThankYouViewController.swift
//  Credera-iOS
//
//  Created by Jonathan Williamson on 1/8/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import Foundation
import UIKit

class ThankYouViewController: UIViewController {
	
	@IBOutlet var backButton: CustomButton!
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(true)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	@IBAction func backSelected(_ sender: Any) {
		self.navigationController?.popToRootViewController(animated: true)
	}
}

