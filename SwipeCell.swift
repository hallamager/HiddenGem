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


//    var number: Int = 0 {
//        didSet {
//            companyName.text = String(number)
//            foldingCompanyName.text = String(number)
//        }
//    }
    
    override func awakeFromNib() {
        
        foregroundView.layer.cornerRadius = 5
        foregroundView.layer.masksToBounds = true
        
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
