//
//  LikedCell.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 21/05/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit
import FoldingCell
import MapKit



class LikedCell: FoldingCell {
    
    var likedContent: LikedContent!
    
    @IBOutlet weak var foldingNameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    

    //Defines sides, shadows and colour of the cells for the viewcontroller.
    override func awakeFromNib() {
        
        foregroundView.layer.cornerRadius = 0
        foregroundView.layer.shadowOpacity = 0.5
        foregroundView.layer.shadowOffset = CGSize(width: 0, height: 0)
        foregroundView.layer.shadowRadius = 4.0
        foregroundView.layer.shadowColor = UIColor.lightGray.cgColor
        
        backgroundColor = .clear
        
        super.awakeFromNib()
    }
    
    //all info for cell is brought in here.
    func setUpCell() {
        foldingNameLabel.text = likedContent.foldingName
        nameLabel.text = likedContent.name
    }
    
    //Defines times for flipping animation.
    
    override func animationDuration(_ itemIndex:NSInteger, type:AnimationType)-> TimeInterval {
        
        // durations count equal it itemCount
        let durations = [0.20, 0.20, 0.20] // timing animation for each view
        return durations[itemIndex]
    }
    
    
}
