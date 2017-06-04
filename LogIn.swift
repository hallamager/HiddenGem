//
//  LogIn.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 03/06/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit

extension LogInViewController{


    override func awakeFromNib() {
    
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
