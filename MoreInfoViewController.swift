//
//  MoreInfoViewController.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 07/05/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit

class MoreInfoViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeMoreInfo(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    
    
    @IBAction func closeOutsideModal(_ sender: Any) {
        dismiss(animated: true, completion:nil)
    }



}
