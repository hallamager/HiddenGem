//
//  MenuTableViewCell.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 19/09/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import Foundation
import UIKit

class MenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblMenuName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
