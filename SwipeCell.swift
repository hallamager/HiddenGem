//
//  DemoCell.swift
//  FoldingCell
//
//  Created by Alex K. on 25/12/15.
//  Copyright © 2015 Alex K. All rights reserved.
//

import UIKit
import FoldingCell

protocol SwipeCellDelegate {
    func buttonTapped(_ tag:Int)
}

class SwipeCell: FoldingCell {
    
    var cell: cellInfo!
    var delegate: SwipeCellDelegate?
    
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var foldingCompanyNameLabel: UILabel!
    
    @IBOutlet weak var LikeDislikeInfoPanel: UIView!
    
    @IBOutlet weak var card: UIView!
    
    override func awakeFromNib() {
        
        foregroundView.layer.cornerRadius = 5
        foregroundView.layer.shadowOpacity = 3
        foregroundView.layer.shadowOffset = CGSize(width: 0, height: 0)
        foregroundView.layer.shadowRadius = 5.0
        foregroundView.layer.shadowColor = UIColor.lightGray.cgColor
        
        containerView.layer.cornerRadius = 5
        containerView.layer.shadowOpacity = 3
        containerView.layer.shadowOffset = CGSize(width: 0, height: 0)
        containerView.layer.shadowRadius = 5.0
        containerView.layer.shadowColor = UIColor.lightGray.cgColor
        
        LikeDislikeInfoPanel.layer.cornerRadius = 5
        LikeDislikeInfoPanel.layer.shadowOpacity = 3
        LikeDislikeInfoPanel.layer.shadowOffset = CGSize(width: 0, height: 0)
        LikeDislikeInfoPanel.layer.shadowRadius = 3.0
        LikeDislikeInfoPanel.layer.shadowColor = UIColor.lightGray.cgColor

        LikeDislikeInfoPanel.layer.zPosition = -1;
        
        super.awakeFromNib()
    }
    
    //all info for cell is brought in here.
    func setUpCell() {
        companyNameLabel.text = cell.companyName
        foldingCompanyNameLabel.text = cell.foldingCompanyName
    }
    
    override func animationDuration(_ itemIndex:NSInteger, type:AnimationType)-> TimeInterval {
        
        let durations = [0.26, 0.2, 0.2]
        return durations[itemIndex]
    }
    
    
    
}

// MARK: Actions
//extension SwipeCell {
//
//  @IBAction func buttonHandler(_ sender: AnyObject) {
//    print("tap")
//  }
//}
