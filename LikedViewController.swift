//
//  LikedViewController.swift
//  HiddenGem
//
//  Created by Hallam John Ager on 21/05/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit
import FoldingCell

//This file defines the table cells for the routes tab view.

class LikedViewController: UIViewController {
    
    var cellBeenOpened = false
    var overlay: UIImageView?
    var selectedRow = 0
    
    @IBOutlet weak var tableView: UITableView!
    
    let kCloseCellHeight: CGFloat = 160
    let kOpenCellHeight: CGFloat = 470
    
    var likes = buildContent()
    var routesName: String!
    var likedContent: LikedContent!
    
    var cellHeights = [CGFloat]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0...likes.count {
            cellHeights.append(kCloseCellHeight)
        }
        
        tableView.backgroundView = UIImageView(image: UIImage(named: "bg"))
        
        
    }
    
}


//Extension tells each cell where to get their data from (e.g. title, images).

extension LikedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return cellHeights[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return likes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoldingCell", for: indexPath) as! LikedCell
        
        cell.likedContent = likes[indexPath.row]
        cell.setUpCell()
//        cell.delegate = self
        
        return cell
    }
}

//Animations for opening and closing the cell.

extension LikedViewController: UITabBarDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        selectedRow = indexPath.row
        
        let cell = tableView.cellForRow(at: indexPath) as! LikedCell
        cellBeenOpened = true
        
        var duration = 0.0
        if cellHeights[indexPath.row] == kCloseCellHeight { // open cell
            cellHeights[indexPath.row] = kOpenCellHeight
            cell.selectedAnimation(true, animated: true, completion: nil)
            duration = 0.5
        } else {// close cell
            cellHeights[indexPath.row] = kCloseCellHeight
            cell.selectedAnimation(false, animated: true, completion: nil)
            duration = 1.1
        }
        
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseOut, animations: { () -> Void in
            tableView.beginUpdates()
            tableView.endUpdates()
        }, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: IndexPath) {
        
        if cell is LikedCell {
            let foldingCell = cell as! LikedCell
            cellBeenOpened = false
            
            if cellHeights[indexPath.row] == kCloseCellHeight {
                foldingCell.selectedAnimation(false, animated: false, completion:nil)
            } else {
                foldingCell.selectedAnimation(true, animated: false, completion: nil)
            }
        }
    }
}
