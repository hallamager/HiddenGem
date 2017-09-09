//
//  BackTableViewContoller.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 09/09/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import Foundation


class BackTableViewController: UITableViewController {
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["Home","Liked"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableArray[IndexPath.row], for: IndexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[IndexPath.row]
        
        return cell
        
    }
}
