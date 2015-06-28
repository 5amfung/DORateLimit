//
//  ViewController.swift
//  RateLimitExample
//
//  Created by Daniele Orrù on 28/06/15.
//  Copyright (c) 2015 Daniele Orru'. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func button1Tapped(sender: AnyObject)
    {
        RateLimit.throttle("keyButton1", threshold: 1, trailing: false) {
            print("triggered throttle with trailing false")
        }
    }

    @IBAction func button2Tapped(sender: AnyObject)
    {
        RateLimit.throttle("keyButton2", threshold: 1, trailing: true) {
            print("triggered throttle with trailing true")
        }
    }

    @IBAction func button3Tapped(sender: AnyObject)
    {
        RateLimit.debounce("keyButton3", threshold: 1, atBegin: false) {
            print("triggered debounce with atBegin false")
        }
    }

    @IBAction func button4Tapped(sender: AnyObject)
    {
        RateLimit.debounce("keyButton4", threshold: 1, atBegin: true) {
            print("triggered debounce with atBegin false")
        }
    }

}

