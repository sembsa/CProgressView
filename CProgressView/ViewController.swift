//
//  ViewController.swift
//  CProgressView
//
//  Created by Sebastian Trześniewski on 21.04.2015.
//  Copyright (c) 2015 Sebastian Trześniewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Only for example
    @IBOutlet weak var labelShowProgress: UILabel!
    @IBOutlet weak var widthStepperOutlet: UIStepper!
    
    // Create IBOutlet for CProgressView
    @IBOutlet weak var viewForTest: CProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Hello everybody :)")
        //viewForTest.image = UIImage(named: "Intel")!
        widthStepperOutlet.value = Double(viewForTest.lineWidth)
    }

    @IBAction func sliderForChangeValue(sender: UISlider) {
        viewForTest.updateProgressCircle(sender.value)
        labelShowProgress.text = String(viewForTest.statusProgress) + "%"
    }
    
    @IBAction func widthStepper(sender: UIStepper) {
        viewForTest.changeLineWidth(CGFloat(sender.value))
    }
    
    
}