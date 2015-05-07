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
    internal var statusProgress: Int = Int()

    // Method for calculate ARC
    private func arc(arc: CGFloat) -> CGFloat {
        let results = ( π * arc ) / 180
        return results
    }
    
    // Variables for IBInspectable
    @IBInspectable var circleColor: UIColor = UIColor.grayColor()
    @IBInspectable var progressColor: UIColor = UIColor.greenColor()
    @IBInspectable var lineWidth: Float = Float(3.0)
    @IBInspectable var valueProgress: Float = Float()
    @IBInspectable var imageView: UIImageView = UIImageView()
    @IBInspectable var image: UIImage?
    
    override func drawRect(rect: CGRect) {

        // Create Path for ARC
        let centerPointArc = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        let radiusArc: CGFloat = self.frame.width / 2 * 0.8
        circlePath = UIBezierPath(arcCenter: centerPointArc, radius: radiusArc, startAngle: arc(0), endAngle: arc(360), clockwise: true)

        // Define background circle progress
        progressCircle.path = circlePath.CGPath
        progressCircle.strokeColor = circleColor.CGColor
        progressCircle.fillColor = UIColor.clearColor().CGColor
        progressCircle.lineWidth = CGFloat(lineWidth)
        progressCircle.strokeStart = 0
        progressCircle.strokeEnd = 100

        // Define real circle progress
        realProgressCircle.path = circlePath.CGPath
        realProgressCircle.strokeColor = progressColor.CGColor
        realProgressCircle.fillColor = UIColor.clearColor().CGColor
        realProgressCircle.lineWidth = CGFloat(lineWidth) + 0.1
        realProgressCircle.strokeStart = 0
        realProgressCircle.strokeEnd = CGFloat(valueProgress) / 100
        
        // UIImageView
        imageView.frame = CGRect(origin: CGPoint(x: circlePath.bounds.minX, y: circlePath.bounds.minY), size: CGSize(width: circlePath.bounds.width, height: circlePath.bounds.height))
        imageView.image = image
        imageView.layer.cornerRadius = radiusArc
        imageView.layer.masksToBounds = true
        addSubview(imageView)
        
        // Set for sublayer circle progress
        layer.addSublayer(progressCircle)
        layer.addSublayer(realProgressCircle)
    }
    
    // Method for update status progress
    func updateProgressCircle(status: Float) {
        statusProgress = Int(status)
        realProgressCircle.strokeEnd = CGFloat(status) / 100
    }
    
    func resetProgressCircle() {
        realProgressCircle.strokeEnd = CGFloat(0.0)
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