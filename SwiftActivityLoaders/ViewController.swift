//
//  ViewController.swift
//  SwiftActivityLoaders
//
//  Created by Ayush Gupta on 3/15/16.
//  Copyright © 2016 Ayush Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dropView: UIView!
    @IBOutlet weak var dropImage: UIImageView!
    @IBOutlet weak var dropImage2: UIImageView!
    @IBOutlet weak var dropImage3: UIImageView!
    @IBOutlet weak var dropImage4: UIImageView!
    @IBOutlet weak var dropImage5: UIImageView!
    @IBOutlet weak var dropImage6: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wineAnimation()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addWineDroppingAnimation(beginTime: CFTimeInterval) -> CAKeyframeAnimation {
        let wineDroppingAnimation = CAKeyframeAnimation.init(keyPath: "opacity")
        wineDroppingAnimation.beginTime = beginTime
        wineDroppingAnimation.duration = 1.0
        wineDroppingAnimation.values = [0.2,1,0.2]
        wineDroppingAnimation.repeatCount = HUGE
        return wineDroppingAnimation
    }
    
    func wineAnimation() {
        dropImage.layer.addAnimation(addWineDroppingAnimation(0.0), forKey: "basic")
        dropImage2.layer.addAnimation(addWineDroppingAnimation(0.2), forKey: "basic")
        dropImage3.layer.addAnimation(addWineDroppingAnimation(0.4), forKey: "basic")
        dropImage4.layer.addAnimation(addWineDroppingAnimation(0.6), forKey: "basic")
        dropImage5.layer.addAnimation(addWineDroppingAnimation(0.8), forKey: "basic")
        dropImage6.layer.addAnimation(addWineDroppingAnimation(1.0), forKey: "basic")
    }

}

