//
//  ViewController.swift
//  CProgressView
//
//  Created by Sebastian Trześniewski on 21.04.2015.
//  Copyright (c) 2015 Sebastian Trześniewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var widoczek: UIView!
    
    var progress = CProgressView(x: 0, y: 0, height: 200, width: 200)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        widoczek.addSubview(progress.progressView)
        progress.changeLineWidth(25)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func sliderForChangeProgress(sender: UISlider) {
        progress.updateProgressCircle(sender.value)
    }

}