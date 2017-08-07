//
//  SwipeView.swift
//  Tinder
//
//  Created by Hallam John Ager on 06/05/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit

class SwipeView: UIView {
    
    @IBOutlet weak var swipeView: UIView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
        
        swipeView.layer.shadowOpacity = 0.5
        swipeView.layer.shadowOffset = CGSize(width: 0, height: 0)
        swipeView.layer.shadowRadius = 4.0
        swipeView.layer.shadowColor = UIColor.lightGray.cgColor
        
        super.awakeFromNib()
    }
    @IBAction func swipeView(_ sender: UIButton) {
        
        let moreInfo = Bundle.main.loadNibNamed("MoreInfo", owner: self, options: nil)![0] as! MoreInfo

        UIView.transition(from: swipeView, to: moreInfo, duration: 0.5, options: .transitionFlipFromRight)

    }
    
}
