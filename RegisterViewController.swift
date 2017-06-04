//
//  RegisterViewController.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 03/06/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import Foundation
import XLPagerTabStrip

class RegisterViewController: UIViewController, IndicatorInfoProvider {
    
    var itemInfo: IndicatorInfo = "View"
    
    init(itemInfo: IndicatorInfo) {
        self.itemInfo = itemInfo
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = Bundle.main.loadNibNamed("Register", owner: self, options: nil)![0] as! Register
        
        view.backgroundColor = .white
        
    }
    
    // MARK: - IndicatorInfoProvider
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
}
