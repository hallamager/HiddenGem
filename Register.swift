//
//  Register.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 04/06/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit

class Register: UIView {
    
    @IBOutlet weak var studentButton: UIButton!
    @IBOutlet weak var businessButton: UIButton!
    
    
    override func awakeFromNib() {
        
        studentButton.layer.shadowOpacity = 0.5
        studentButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        studentButton.layer.shadowRadius = 4.0
        studentButton.layer.shadowColor = UIColor.lightGray.cgColor
        studentButton.layer.cornerRadius = 18
        studentButton.layer.masksToBounds = true
        
        businessButton.layer.cornerRadius = studentButton.layer.cornerRadius
        businessButton.layer.shadowOpacity = studentButton.layer.shadowOpacity
        businessButton.layer.shadowOffset = studentButton.layer.shadowOffset
        businessButton.layer.shadowRadius = studentButton.layer.shadowRadius
        businessButton.layer.shadowColor = studentButton.layer.shadowColor
        businessButton.layer.masksToBounds = true

        
        self.studentButton.titleLabel?.textColor = UIColor.white
        
        self.studentButton.applyGradient(colours: [UIColor(red: 119/255.0, green: 201/255.0, blue: 212/255.0, alpha: 1.0), UIColor(red: 62/255.0, green: 180/255.0, blue: 123/255.0, alpha: 1.0)])
        
        self.businessButton.titleLabel?.textColor = UIColor.white
        
        self.businessButton.applyGradient(colours: [UIColor(red: 119/255.0, green: 201/255.0, blue: 212/255.0, alpha: 1.0), UIColor(red: 62/255.0, green: 180/255.0, blue: 123/255.0, alpha: 1.0)])
        
        
        super.awakeFromNib()
    }
    
}
