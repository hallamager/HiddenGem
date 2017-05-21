//
//  LikeContent.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 21/05/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit
import CoreLocation

//This file is a custom class for the each of the likes. It contains all the info for the likes to be displayed on the screen and in the table cells.

class LikedContent {
    
    let name: String!
    let foldingName: String!

    
    
    init(name: String, foldingName: String) {
        
        self.name = name
        self.foldingName = foldingName

    }
    
}


func buildContent() -> [LikedContent] {
    var likes = [LikedContent]()
    
    likes.append(LikedContent(
                        name: "Heathland Path",
                        foldingName: "Heathland Path"
        )
    )
    
    likes.append(LikedContent(
                        name: "Sensory Path",
                        foldingName: "Sensory Path"
        )
    )
    
    return likes
}
