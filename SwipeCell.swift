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
    
    override func awakeFromNib() {
        
        foregroundView.layer.cornerRadius = 5
        foregroundView.layer.shadowOpacity = 1.7
        foregroundView.layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
        foregroundView.layer.shadowRadius = 5.0
        foregroundView.layer.shadowColor = UIColor.lightGray.cgColor
        
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
