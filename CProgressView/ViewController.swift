//
//  ViewController.swift
//  CProgressView
//
//  Created by Sebastian Trześniewski on 21.04.2015.
//  Copyright (c) 2015 Sebastian Trześniewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewForTest: CProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Hello everybody :)")
    }

    @IBAction func sliderForChangeValue(sender: UISlider) {
        viewForTest.updateProgressCircle(sender.value)
    }
}