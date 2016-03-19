//
//  ViewController.swift
//  SwiftActivityLoaders
//
//  Created by Ayush Gupta on 3/15/16.
//  Copyright © 2016 Ayush Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func glassFillingButtonClicked(sender: UIButton) {
        
        self.performSegueWithIdentifier("waterSegue", sender: self)
    }
    
    @IBAction func carLoaderButtonClicked(sender: AnyObject) {
        
        self.performSegueWithIdentifier("carSegue", sender: self)
    }

    @IBAction func pizzaBiteButtonClicked(sender: AnyObject) {
        
        self.performSegueWithIdentifier("pizzaSegue", sender: self)
    }
}

