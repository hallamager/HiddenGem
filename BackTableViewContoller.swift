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
    var coverView: UIView?
    
    override func viewDidLoad() {
        TableArray = ["Home","Liked"]
        
        // sets color overlay on front view controller
        coverView = UIView(frame: UIScreen.main.bounds)
        coverView?.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 0.5)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableArray[IndexPath.row], for: IndexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[IndexPath.row]
        
        return cell
        
    }
    
    // disables interactions on front view controller
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.revealViewController().view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.revealViewController().frontViewController.revealViewController().tapGestureRecognizer()
        self.revealViewController().frontViewController.view.isUserInteractionEnabled = false
        
        // remove shadow on front view controller
        self.revealViewController().frontViewShadowOffset = CGSize(width: 0, height: 0);
        self.revealViewController().frontViewShadowOpacity = 0.0;
        self.revealViewController().frontViewShadowRadius = 0.0;

        
        // displays color overlay view on front view controller
        self.revealViewController().frontViewController.view.addSubview(coverView!)

    }
    
    // re-nables interactions on front view controller once menu is closed
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.revealViewController().frontViewController.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.revealViewController().frontViewController.view.isUserInteractionEnabled = true
        
        // removes color overlay view on front view controller
        coverView!.removeFromSuperview()
        
    }

}
