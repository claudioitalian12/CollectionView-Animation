//
//  ViewController.swift
//  CollectionViewAnimate
//
//  Created by claudio Cavalli on 24/10/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 var image = ["book-2","library","scholarship","management","brainstorm","audio","hourglass"]
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    

    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        var i = 0
        let fade = animate()
        while(i<7){
            (collectionview.cellForItem(at: IndexPath(item: i, section: 0))?.layer)?.add(fade, forKey: nil)
            i = i + 1
            fade.beginTime = CACurrentMediaTime() + (Double(i)/5)
            
        }
    }
    
    func animate() -> CABasicAnimation{
        let fadeIn = CABasicAnimation(keyPath: "opacity")
        fadeIn.fromValue = 0.0
        fadeIn.toValue = 1.0
        fadeIn.duration = 1.0
        fadeIn.fillMode = CAMediaTimingFillMode.backwards
        
        return fadeIn
    }

}

