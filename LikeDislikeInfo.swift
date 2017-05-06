//
//  LikeDislikeInfo.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 06/05/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit
import Koloda

class likeDislikePanel: KolodaView {
    

    
}


extension ViewController {

    //Like Dislike Info Panel
    
    
    @IBAction func leftButtonTapped() {
        kolodaView?.swipe(.left)
    }
    
    @IBAction func rightButtonTapped() {
        kolodaView?.swipe(.right)
    }
    
    @IBAction func undoButtonTapped() {
        kolodaView?.revertAction()
    }
    
}
