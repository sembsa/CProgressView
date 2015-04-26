//
//  CProgressView.swift
//  CProgressView
//
//  Created by Sebastian Trześniewski on 21.04.2015.
//  Copyright (c) 2015 Sebastian Trześniewski. All rights reserved.
//

import UIKit

@IBDesignable class CProgressView: UIView {
    
    // Variables
    private var π: CGFloat = CGFloat(M_PI)
    private var progressCircle = CAShapeLayer()
    private var realProgressCircle = CAShapeLayer()
    private var circlePath = UIBezierPath()

    // Method for calculate ARC
    private func arc(arc: CGFloat) -> CGFloat {
        let results = ( π * arc ) / 180
        return results
    }
    
    // Variables for IBInspectable
    @IBInspectable var circleColor: UIColor = UIColor.grayColor()
    @IBInspectable var progressColor: UIColor = UIColor.greenColor()
    @IBInspectable var valueProgress: Float = Float()
    
    override func drawRect(rect: CGRect) {

        // Create Path for ARC
        let centerPointArc = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        let radiusArc: CGFloat = self.frame.width / 2 * 0.8
        circlePath = UIBezierPath(arcCenter: centerPointArc, radius: radiusArc, startAngle: arc(0), endAngle: arc(360), clockwise: true)

        // Define background circle progress
        progressCircle.path = circlePath.CGPath
        progressCircle.strokeColor = circleColor.CGColor
        progressCircle.fillColor = UIColor.clearColor().CGColor
        progressCircle.lineWidth = 10
        progressCircle.strokeStart = 0
        progressCircle.strokeEnd = 100

        // Define real circle progress
        realProgressCircle.path = circlePath.CGPath
        realProgressCircle.strokeColor = progressColor.CGColor
        realProgressCircle.fillColor = UIColor.clearColor().CGColor
        realProgressCircle.lineWidth = 10.1
        realProgressCircle.strokeStart = 0
        realProgressCircle.strokeEnd = CGFloat(valueProgress) / 100

        // Set for sublayer circle progress
        layer.addSublayer(progressCircle)
        layer.addSublayer(realProgressCircle)
    }
    
    // Method for update status progress
    func updateProgressCircle(status: Float) {
        realProgressCircle.strokeEnd = CGFloat(status) / 100
    }

    // Method for update look :)
    func changeColorBackgroundCircleProgress(stroke: UIColor?, fill: UIColor?) {
        progressCircle.strokeColor = stroke!.CGColor
        progressCircle.fillColor = fill!.CGColor
    }

    func changeColorRealCircleProgress( stroke: UIColor?, fill: UIColor?) {
        realProgressCircle.strokeColor = stroke!.CGColor
        realProgressCircle.fillColor = fill!.CGColor
    }

    func changeLineWidth(size: CGFloat) {
        progressCircle.lineWidth = size
        realProgressCircle.lineWidth = size + 0.1
    }

}