//
//  Checkbox.swift
//  Taskify
//
//  Created by Richardson, Nick E on 11/17/17.
//  Copyright © 2017 Wermager, William T. All rights reserved.
//

import UIKit

class Checkbox: UILabel {

    class CheckBoxButton: UIButton {
        
        // Images
        let checkedImage = UIImage(named: "CheckBoxChecked")! as UIImage
        let uncheckedImage = UIImage(named: "CheckBoxUnChecked")! as UIImage
        
        // Bool property
        var isChecked: Bool = false {
            didSet{
                if isChecked == true {
                    self.setImage(uncheckedImage, for: [])
                } else {
                    self.setImage(checkedImage, for: [])
                }
            }
        }
        
        override func awakeFromNib() {
            self.isUserInteractionEnabled = false
            //        self.addTarget(self, action: #selector(CheckBoxButton.buttonClicked(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            //        self.isChecked = false
        }
        
        func buttonClicked(sender: UIButton) {
            if sender == self {
                if isChecked == true {
                    isChecked = false
                } else {
                    isChecked = true
                }
            }
        }
        
    }

}
