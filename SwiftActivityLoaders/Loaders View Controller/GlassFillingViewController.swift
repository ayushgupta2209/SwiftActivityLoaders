//
//  GlassFillingViewController
//  SwiftActivityLoaders
//
//  Created by Ayush Gupta on 3/14/16.
//  Copyright © 2016 Ayush Gupta. All rights reserved.
//

import UIKit

class GlassFillingViewController: UIViewController {
    @IBOutlet weak var dropView: UIView!
    @IBOutlet weak var dropImage: UIImageView!
    @IBOutlet weak var dropImage2: UIImageView!
    @IBOutlet weak var dropImage3: UIImageView!
    @IBOutlet weak var dropImage4: UIImageView!
    @IBOutlet weak var dropImage5: UIImageView!
    @IBOutlet weak var dropImage6: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        dropAnimation()
    }

    func addWaterDroppingAnimation(beginTime: CFTimeInterval) -> CAKeyframeAnimation {
        let waterDroppingAnimation = CAKeyframeAnimation.init(keyPath: "position.y")
        waterDroppingAnimation.beginTime = beginTime
        waterDroppingAnimation.duration = 2.0
        waterDroppingAnimation.speed = 8.0
        waterDroppingAnimation.values = [0,30]
        waterDroppingAnimation.repeatCount = HUGE
        return waterDroppingAnimation
    }
    
    func dropAnimation() {
        dropImage.layer.addAnimation(addWaterDroppingAnimation(0.0), forKey: "basic")
//        dropImage2.layer.addAnimation(addWaterDroppingAnimation(0.2), forKey: "basic")
//        dropImage3.layer.addAnimation(addWaterDroppingAnimation(0.4), forKey: "basic")
//        dropImage4.layer.addAnimation(addWaterDroppingAnimation(0.6), forKey: "basic")
//        dropImage5.layer.addAnimation(addWaterDroppingAnimation(0.8), forKey: "basic")
//        dropImage6.layer.addAnimation(addWaterDroppingAnimation(1.0), forKey: "basic")
        dropImage2.hidden = true
        dropImage3.hidden = true
        dropImage4.hidden = true
        dropImage5.hidden = true
        dropImage6.hidden = true
    }

}

