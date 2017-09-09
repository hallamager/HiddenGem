//
//  RegisterViewController.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 03/06/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import Foundation
import XLPagerTabStrip

class RegisterViewController: UIViewController, IndicatorInfoProvider {

    @IBOutlet weak var studentButton: UIButton!
    @IBOutlet weak var businessButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        
//        self.studentButton.titleLabel?.textColor = UIColor.white
//        
//        self.studentButton.applyGradient(colours: [UIColor(red: 119/255.0, green: 201/255.0, blue: 212/255.0, alpha: 1.0), UIColor(red: 62/255.0, green: 180/255.0, blue: 123/255.0, alpha: 1.0)])
//        
//        self.businessButton.titleLabel?.textColor = UIColor.white
//        
//        self.businessButton.applyGradient(colours: [UIColor(red: 119/255.0, green: 201/255.0, blue: 212/255.0, alpha: 1.0), UIColor(red: 62/255.0, green: 180/255.0, blue: 123/255.0, alpha: 1.0)])
        
    }
    
    // MARK: - IndicatorInfoProvider
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Register")
    }
}
