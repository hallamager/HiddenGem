//
//  SwipeCellInfo.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 23/04/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit

class cellInfo {
    
    let companyName: String!
    let foldingCompanyName: String!
    
    
    init(companyName: String, foldingCompanyName: String) {
        
        self.companyName = companyName
        self.foldingCompanyName = foldingCompanyName
    }
    
}


func buildCell() -> [cellInfo] {
    var cells = [cellInfo]()
    
    cells.append(cellInfo(
        companyName: "COMPANY",
        foldingCompanyName: "COMPANY"
        )
    )
    
    
    return cells
}

