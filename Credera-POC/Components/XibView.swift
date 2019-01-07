//
//  XibView.swift
//  Credera-iOS
//
//  Created by Zachary Slayter on 1/2/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import Foundation
import UIKit

// This class is setup for being programmatically initialized, or
// placed in a separate view file. If a subclass is desired to be
// loaded in a storyboard file, add '@IBDesignable' in front of
// that subclasses class declaration.
class XibView: UIView {
    
    // MARK: - Init
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    /*
     * Used for programmatically placing a view
     */
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
        self.awakeFromNib()
    }
    
    /*
     * Used for initializing a view on a storyboard file
     */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupView()
    }
    
    /*
     * The code used to setup the view, regardless of where
     * it is being initialized.
     */
    func setupView() {
        let view = viewFromNibForClass()
        
        // If no size is set, use the size of the view,
        // otherwise use the specified size.
        if self.frame == CGRect.zero {
            self.frame = view.frame
        } else {
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
        
        self.addSubview(view)
    }
    
    /*
     * Loads the view from the xib file. The xib file name must match
     * the name of the class.
     */
    func viewFromNibForClass() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = String(describing: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            fatalError("nib " + nibName + " could not be instantiated.")
        }
        
        return view
    }
    
}
