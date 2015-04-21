//
//  CProgressView.swift
//  CProgressView
//
//  Created by Sebastian Trześniewski on 21.04.2015.
//  Copyright (c) 2015 Sebastian Trześniewski. All rights reserved.
//

import UIKit

class CProgressView {
    
    private var π: CGFloat = CGFloat(M_PI)
    
    private func arc(arc: CGFloat) -> CGFloat {
        let wynik = ( π * arc ) / 180
        return wynik
    }
    
    private var progressCircle = CAShapeLayer()
    private var realProgressCircle = CAShapeLayer()
    var progressView = UIView()
    
    init(x: CGFloat, y: CGFloat, height: CGFloat, width: CGFloat) {
        
        // Make frame for UIView
        progressView.frame = CGRectMake(x, y, width, height)
        
        // Create Path for ARC
        let centerPointArc = CGPoint(x: progressView.frame.size.width / 2, y: progressView.frame.size.height / 2)
        let radiusArc: CGFloat = progressView.frame.width / 2 * 0.8
        var circlePath = UIBezierPath(arcCenter: centerPointArc, radius: radiusArc, startAngle: arc(0), endAngle: arc(360), clockwise: true)
        
        // Define background circle progress
        progressCircle.path = circlePath.CGPath
        progressCircle.strokeColor = UIColor.grayColor().CGColor
        progressCircle.fillColor = UIColor.clearColor().CGColor
        progressCircle.lineWidth = 10
        progressCircle.strokeStart = 0
        progressCircle.strokeEnd = 100
        
        // Define real circle progress
        realProgressCircle.path = circlePath.CGPath
        realProgressCircle.strokeColor = UIColor.greenColor().CGColor
        realProgressCircle.fillColor = UIColor.clearColor().CGColor
        realProgressCircle.lineWidth = 10.1
        realProgressCircle.strokeStart = 0
        realProgressCircle.strokeEnd = 0
        
        // Set for Sublayer circle progress
        progressView.layer.addSublayer(progressCircle)
        progressView.layer.addSublayer(realProgressCircle)
        
    }
    
    func updateProgressCircle(status: Float) {
        realProgressCircle.strokeEnd = CGFloat(status)
    }
    
    // Method for update look :)
    func changeColorBackgroundCircleProgress(stroke: UIColor?, fill: UIColor?) {
        progressCircle.strokeColor = stroke!.CGColor
        progressCircle.fillColor = fill!.CGColor
    }
    
    func changeColorRealCircleProgress(stroke: UIColor?, fill: UIColor?) {
        realProgressCircle.strokeColor = stroke!.CGColor
        realProgressCircle.fillColor = fill!.CGColor
    }
    
    func changeLineWidth(size: CGFloat) {
        progressCircle.lineWidth = size
        realProgressCircle.lineWidth = size + 0.1
    }
    
}