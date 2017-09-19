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
    
    //what happens when user runs out of cards
    func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        print("Out of cards")
    }
    
    //what happens when card is pressed
    func koloda(_ koloda: KolodaView, didSelectCardAt index: Int) {
        print("card tapped")
        
    }
    
    // point at wich card disappears
    func kolodaSwipeThresholdRatioMargin(_ koloda: KolodaView) -> CGFloat? {
        return 0.1
    }

    
//    func koloda(_ koloda: KolodaView, shouldDragCardAt index: Int) -> Bool {
//        // If you return false the card will not move.
//        return false
//    }

    
    func koloda(_ koloda: KolodaView, didSwipeCardAt index: Int, in direction: SwipeResultDirection) {
        
        let x = data[index]
        print("did swipe \(x) in direction: \(direction)")
        
    }
    
    func koloda(_ koloda: KolodaView, draggedCardWithPercentage finishPercentage: CGFloat, in direction: SwipeResultDirection) {
//        print("being swiped \(direction)")
        
        if direction == SwipeResultDirection.right {
            // implement your functions or whatever here
            print("user swiping right")
            
            
        } else if direction == .left {
            // implement your functions or whatever here
            print("user swiping left")
        }
        
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
