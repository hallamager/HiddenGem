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

    
    var data = ["One", "Two", "Three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kolodaView.dataSource = self
        kolodaView.delegate = self
    }
    
}

extension ViewController: KolodaViewDelegate {
    
    func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        print("Out of cards")
    }
    
    func koloda(_ koloda: KolodaView, didSelectCardAt index: Int) {
        UIApplication.shared.openURL(URL(string: "https://yalantis.com/")!)
    }
    
    func koloda(_ koloda: KolodaView, didSwipeCardAt index: Int, in direction: SwipeResultDirection) {
        
        let x = data[index]
        print("did swipe \(x) in diredtion: \(direction)")
    }
    
}

extension ViewController: KolodaViewDataSource {
    
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return data.count
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        
        let swipeView = Bundle.main.loadNibNamed("SwipeView", owner: self, options: nil)![0] as! SwipeView
        let x = data[index]
        
        //        swipeView.setupView(job: x)
        
        
        return swipeView
    }
    
    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .default
    }
    
}
