//
//  PizzaViewController.swift
//  SwiftActivityLoaders
//
//  Created by Ayush Gupta on 3/16/16.
//  Copyright © 2016 Ayush Gupta. All rights reserved.
//

import UIKit

class PizzaViewController: UIViewController {
    
    @IBOutlet weak var pizzaBite1: UIImageView!
    @IBOutlet weak var pizzaBite2: UIImageView!
    @IBOutlet weak var pizzaBite3: UIImageView!
    @IBOutlet weak var pizzaBite4: UIImageView!
    @IBOutlet weak var pizzaBite5: UIImageView!
    @IBOutlet weak var pizzaBite6: UIImageView!
    @IBOutlet weak var pizzaBite7: UIImageView!
    @IBOutlet weak var pizzaBite8: UIImageView!
    @IBOutlet weak var pizzaBite9: UIImageView!
    @IBOutlet weak var pizzaBite10: UIImageView!
    @IBOutlet weak var pizzaBite11: UIImageView!
    @IBOutlet weak var pizzaBite12: UIImageView!
    @IBOutlet weak var pizzaBite13: UIImageView!
    @IBOutlet weak var pizzaBite14: UIImageView!
    @IBOutlet weak var pizzaBite15: UIImageView!
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        let timer = NSTimer.scheduledTimerWithTimeInterval(3.6, target: self, selector: "pizzaEatingAnimation", userInfo: nil, repeats: true)
        timer.fire()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func eatBite(pizzaBitesArray: [UIImageView]) {
        UIView.animateWithDuration(0.2, animations: {
            pizzaBitesArray[self.index].alpha = 0
            }, completion: {
                (value: Bool) -> Void in
                if(self.index < 14) {
                    self.index = self.index+1
                    self.eatBite(pizzaBitesArray)
                } else {
                    for i in 0...14 {
                        pizzaBitesArray[i].alpha = 1;
                    }
                    self.index = 0
                }
        })
    }
    
    func pizzaEatingAnimation() {
        let pizzaBitesArray: [UIImageView] = [pizzaBite1, pizzaBite2, pizzaBite3, pizzaBite4, pizzaBite5, pizzaBite6, pizzaBite7, pizzaBite8, pizzaBite9, pizzaBite10, pizzaBite11, pizzaBite12, pizzaBite13, pizzaBite14, pizzaBite15]
        eatBite(pizzaBitesArray)
    }

}
