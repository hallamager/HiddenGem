//
//  ViewController.swift
//  Tinder
//
//  Created by Hallam John Ager on 06/05/2017.
//  Copyright © 2017 Hallam John Ager. All rights reserved.
//

import UIKit
import Koloda

class ViewController: UIViewController {
    
    @IBOutlet weak var kolodaView: KolodaView!
    @IBOutlet var OpenMenu: UIBarButtonItem!
    
    var data = ["One", "Two", "Three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kolodaView.dataSource = self
        kolodaView.delegate = self
        
        //open menu with tab bar button
        OpenMenu.target = self.revealViewController()
        OpenMenu.action = #selector(SWRevealViewController.revealToggle(_:))
        
        
        //open menu with swipe gesture
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }

}

extension ViewController: KolodaViewDelegate {
    
    func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        print("Out of cards")
    }
    
    
    func koloda(_ koloda: KolodaView, didSelectCardAt index: Int) {
        //what happens when card is pressed
        print("card tapped")
    }
    
//    func koloda(_ koloda: KolodaView, shouldDragCardAt index: Int) -> Bool {
//        // If you return false the card will not move.
//        return false
//    }

    
    func koloda(_ koloda: KolodaView, didSwipeCardAt index: Int, in direction: SwipeResultDirection) {
        
        let x = data[index]
        print("did swipe \(x) in direction: \(direction)")
        
//        if direction == SwipeResultDirection.right {
//            // implement your functions or whatever here
//            print("user swiped right")
//        } else if direction == .left {
//            // implement your functions or whatever here
//            print("user swiped left")
//        }
        
    }
    
}

extension ViewController: KolodaViewDataSource {
    
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return data.count
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        
        let swipeView = Bundle.main.loadNibNamed("SwipeView", owner: self, options: nil)![0] as! SwipeView

//        let x = data[index]
        
//        swipeView.setupView(job: x)
    
        return swipeView

    }
    
    
    
    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .default
    }
    
}
