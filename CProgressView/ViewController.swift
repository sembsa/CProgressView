//
//  ViewController.swift
//  CProgressView
//
//  Created by Sebastian Trześniewski on 21.04.2015.
//  Copyright (c) 2015 Sebastian Trześniewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var progress = CProgressView(x: 100, y: 100, height: 200, width: 200)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(progress.progressView)
        progress.changeLineWidth(25)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func sliderForChangeProgress(sender: UISlider) {
        progress.updateProgressCircle(sender.value)
    }

}

