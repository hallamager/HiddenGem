//
//  SwipeView.swift
//  Tinder
//
//  Created by Hallam John Ager on 06/05/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit
import Koloda

class SwipeView: UIView {
    
    @IBOutlet weak var swipeView: UIView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    override func awakeFromNib() {
        
        swipeView.layer.shadowOpacity = 0.2
        swipeView.layer.shadowOffset = CGSize(width: 0, height: 9)
        swipeView.layer.shadowRadius = 6
        swipeView.layer.shadowColor = UIColor.black.cgColor

        
        super.awakeFromNib()
    }
    @IBAction func swipeView(_ sender: UIButton) {
        
        let moreInfo = Bundle.main.loadNibNamed("MoreInfo", owner: self, options: nil)![0] as! MoreInfo
        
        moreInfo.frame = self.bounds
        
        UIView.transition(from: swipeView, to: moreInfo, duration: 0.5, options: .transitionFlipFromRight)

    }

}
