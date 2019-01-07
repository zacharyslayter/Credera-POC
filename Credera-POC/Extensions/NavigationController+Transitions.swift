//
//  NavigationController+Extension.swift
//  Credera-iOS
//
//  Created by Zachary Slayter on 1/2/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {

    public func pushFromTop(_ viewController: UIViewController, completion: (() -> Void)?) {
        DispatchQueue.main.async {
            let transition: CATransition = CATransition()
            transition.duration = 0.5
            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            transition.type = CATransitionType.moveIn
            transition.subtype = CATransitionSubtype.fromBottom
            self.view.window?.layer.add(transition, forKey: nil)
            self.pushViewController(viewController, animated: false)
            completion?()
        }
    }
    
    public func popToTop(completion: (() -> Void)?) {
        DispatchQueue.main.async {
            let transition: CATransition = CATransition()
            transition.duration = 0.5
            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            transition.type = CATransitionType.reveal
            transition.subtype = CATransitionSubtype.fromTop
            self.view.window?.layer.add(transition, forKey: nil)
            self.popViewController(animated: false)
            completion?()
        }
    }
    
    public func pushFromBottom(_ viewController: UIViewController, completion: (() -> Void)?) {
        DispatchQueue.main.async {
            let transition: CATransition = CATransition()
            transition.duration = 0.5
            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            transition.type = CATransitionType.moveIn
            transition.subtype = CATransitionSubtype.fromTop
            self.view.window?.layer.add(transition, forKey: nil)
            self.pushViewController(viewController, animated: false)
            completion?()
        }
    }
    
    public func popToBottom(completion: (() -> Void)?) {
        DispatchQueue.main.async {
            let transition: CATransition = CATransition()
            transition.duration = 0.5
            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            transition.type = CATransitionType.reveal
            transition.subtype = CATransitionSubtype.fromBottom
            self.view.window?.layer.add(transition, forKey: nil)
            self.popViewController(animated: false)
            completion?()
        }
    }

}
