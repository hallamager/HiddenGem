//
//  LogInViewController.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 03/06/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import Foundation
import XLPagerTabStrip

class LogInViewController: UIViewController, IndicatorInfoProvider {
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        signInButton.layer.shadowOpacity = 0.5
        signInButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        signInButton.layer.shadowRadius = 4.0
        signInButton.layer.shadowColor = UIColor.lightGray.cgColor
        signInButton.layer.cornerRadius = 18
        signInButton.layer.masksToBounds = true
        
        
//        self.signInButton.titleLabel?.textColor = UIColor.white
//        
//        self.signInButton.applyGradient(colours: [UIColor(red: 119/255.0, green: 201/255.0, blue: 212/255.0, alpha: 1.0), UIColor(red: 62/255.0, green: 180/255.0, blue: 123/255.0, alpha: 1.0)])
        
        
//        let borderUsername = CALayer()
//        let widthUsername = CGFloat(1.0)
//        borderUsername.borderColor = UIColor.lightGray.cgColor
//        borderUsername.frame = CGRect(x: 0, y: username.frame.size.height - widthUsername, width:  username.frame.size.width, height: username.frame.size.height)
//        
//        borderUsername.borderWidth = widthUsername
//        username.layer.addSublayer(borderUsername)
//        username.layer.masksToBounds = true
//        
//        let borderPassword = CALayer()
//        let widthPassword = CGFloat(1.0)
//        borderPassword.borderColor = UIColor.lightGray.cgColor
//        borderPassword.frame = CGRect(x: 0, y: password.frame.size.height - widthPassword, width:  password.frame.size.width, height: username.frame.size.height)
//        
//        borderPassword.borderWidth = widthPassword
//        password.layer.addSublayer(borderPassword)
//        password.layer.masksToBounds = true

        
    }
    
    // MARK: - IndicatorInfoProvider
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Login")
    }
}
