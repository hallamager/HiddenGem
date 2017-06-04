//
//  LogIn.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 03/06/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit

class LogIn: UIView {

    @IBOutlet weak var logIn: UIView!
    @IBOutlet weak var SignInButton: UIButton!
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!

    
    override func awakeFromNib() {
        
        SignInButton.layer.shadowOpacity = 0.5
        SignInButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        SignInButton.layer.shadowRadius = 4.0
        SignInButton.layer.shadowColor = UIColor.lightGray.cgColor
        SignInButton.layer.cornerRadius = 18
        SignInButton.layer.masksToBounds = true
        

        self.SignInButton.titleLabel?.textColor = UIColor.white
        
        self.SignInButton.applyGradient(colours: [UIColor(red: 119/255.0, green: 201/255.0, blue: 212/255.0, alpha: 1.0), UIColor(red: 62/255.0, green: 180/255.0, blue: 123/255.0, alpha: 1.0)])
        
        
        let borderUsername = CALayer()
        let widthUsername = CGFloat(1.0)
        borderUsername.borderColor = UIColor.lightGray.cgColor
        borderUsername.frame = CGRect(x: 0, y: Username.frame.size.height - widthUsername, width:  Username.frame.size.width, height: Username.frame.size.height)
        
        borderUsername.borderWidth = widthUsername
        Username.layer.addSublayer(borderUsername)
        Username.layer.masksToBounds = true
        
        let borderPassword = CALayer()
        let widthPassword = CGFloat(1.0)
        borderPassword.borderColor = UIColor.lightGray.cgColor
        borderPassword.frame = CGRect(x: 0, y: Password.frame.size.height - widthPassword, width:  Password.frame.size.width, height: Username.frame.size.height)
        
        borderPassword.borderWidth = widthPassword
        Password.layer.addSublayer(borderPassword)
        Password.layer.masksToBounds = true
        
        super.awakeFromNib()
    }
    

    
}

extension UIView {
    func applyGradient(colours: [UIColor]) -> Void {
        self.applyGradient(colours: colours, locations: nil)
    }
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        self.layer.insertSublayer(gradient, at: 0)
    }
}
