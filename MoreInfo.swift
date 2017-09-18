//
//  MoreInfo.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 06/08/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit
import Koloda

class MoreInfo: UIView {
    
    @IBOutlet weak var moreInfo: UIView!
    
        
    override func awakeFromNib() {
        
        moreInfo.layer.shadowOpacity = 0.5
        moreInfo.layer.shadowOffset = CGSize(width: 0, height: 0)
        moreInfo.layer.shadowRadius = 4.0
        moreInfo.layer.shadowColor = UIColor.lightGray.cgColor
        
        super.awakeFromNib()
    }

    @IBAction func moreInfo(_ sender: Any) {
        
        let swipeView = Bundle.main.loadNibNamed("SwipeView", owner: self, options: nil)![0] as! SwipeView
        
        swipeView.frame = self.bounds
        
        UIView.transition(from: moreInfo, to: swipeView, duration: 0.5, options: .transitionFlipFromLeft)
        
    }
    
    
}
