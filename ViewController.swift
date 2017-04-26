//
//  MainTableViewController.swift
//
// Copyright (c) 21/12/15. Ramotion Inc. (http://ramotion.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit
import FoldingCell

class ViewController: UIViewController {
    
    var selectedRow = 0
    var cellBeenOpened = false

    
    @IBOutlet weak var tableView: UITableView!
    
    let kCloseCellHeight: CGFloat = 700
    let kOpenCellHeight: CGFloat = 850
    
    
    var cells = buildCell()
    var cell: cellInfo!
    
    var cellHeights = [CGFloat]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0...cells.count {
            cellHeights.append(kCloseCellHeight)
        }
        
        tableView.backgroundView = UIImageView(image: UIImage(named: "bg"))
        
    }
    
    
    @IBAction func LikeButton(_ sender: UIButton) {
    }
    
    

    
    @IBAction func panCard(_ sender: UIPanGestureRecognizer) {
        
        let card = sender.view!
        let point = sender.translation(in: view)
        
        card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        
        func swipeLeft() {
            //move off to the left
            UIView.animate(withDuration: 0.3, animations: {
                card.center = CGPoint(x: card.center.x - 200, y: card.center.y + 75)
                card.alpha = 0
            })
        }
        
        func swipeRight() {
            //move off to the right
            UIView.animate(withDuration: 0.3, animations: {
                card.center = CGPoint(x: card.center.x + 200, y: card.center.y + 75)
                card.alpha = 0
            })
        }
        
        if sender.state == UIGestureRecognizerState.ended {
            
            if card.center.x < 75 {
                swipeLeft()
                return
            } else if card.center.x > (view.frame.width - 75) {
                swipeRight()
                return
            }
           
            resetCard()
            
        }
        
    }
    
    
    
    @IBAction func reset(_ sender: UIButton) {
        resetCard()
    }
    
    func resetCard() {
        UIView.animate(withDuration: 0.2, animations: {

        })
        
    }
    
    
}

//delegeate for Route cell method.

extension ViewController: SwipeCellDelegate {
    func buttonTapped(_ tag: Int) {
        selectedRow = tag
    }
}

//Extension tells each cell where to get their data from (e.g. title, images).

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return cellHeights[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoldingCell", for: indexPath) as! SwipeCell
        
        cell.cell = cells[indexPath.row]
        cell.setUpCell()
        cell.delegate = self
        
        return cell
    }
}

//Animations for opening and closing the cell.

extension ViewController: UITabBarDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        selectedRow = indexPath.row
        
        let cell = tableView.cellForRow(at: indexPath) as! SwipeCell
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
        
        if cell is SwipeCell {
            let foldingCell = cell as! SwipeCell
            cellBeenOpened = false
            
            if cellHeights[indexPath.row] == kCloseCellHeight {
                foldingCell.selectedAnimation(false, animated: false, completion:nil)
            } else {
                foldingCell.selectedAnimation(true, animated: false, completion: nil)
            }
        }
    }
}

