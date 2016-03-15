//
//  CarLoaderViewController.swift
//  SwiftActivityLoaders
//
//  Created by Ayush Gupta on 3/15/16.
//  Copyright © 2016 Ayush Gupta. All rights reserved.
//

import UIKit

class CarLoaderViewController: UIViewController {
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var passengerImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        animateCar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func addCarMovementAnimation() -> CAKeyframeAnimation {
        
        let screenWidth = UIScreen.mainScreen().bounds.width
        
        let animation = CAKeyframeAnimation.init(keyPath: "position.x")
        animation.duration = 4.0
        animation.values = [0, screenWidth/2, screenWidth/2, screenWidth]
        animation.keyTimes = [0, 0.4, 0.6, 1.0]
        animation.timingFunctions = [CAMediaTimingFunction.init(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction.init(name: kCAMediaTimingFunctionLinear), CAMediaTimingFunction.init(name: kCAMediaTimingFunctionEaseInEaseOut)]
        animation.repeatCount = HUGE
        return animation
    }
    
    func addPassenderAnimation() -> CAKeyframeAnimation {
        
        let animation = CAKeyframeAnimation.init(keyPath: "transform.scale")
        animation.duration = 4.0
        animation.values = [1.0, 1.0, 0.0]
        animation.keyTimes = [0, 0.4, 0.6]
        animation.repeatCount = HUGE
        return animation
    }

    func animateCar() {
        carImageView.layer.addAnimation(addCarMovementAnimation(), forKey: "basic")
        passengerImageView.layer.addAnimation(addPassenderAnimation(), forKey: "basic")
    }
}
