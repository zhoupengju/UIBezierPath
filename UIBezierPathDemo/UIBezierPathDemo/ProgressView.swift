//
//  ProgressView.swift
//  UIBezierPathDemo
//
//  Created by 周鹏钜 on 16/10/22.
//  Copyright © 2016年 周鹏钜. All rights reserved.
//

import UIKit

class ProgressView: UIView {
    
    // MARK: - 定义属性
    var progress : CGFloat = 0 {
    
        didSet {
            setNeedsDisplay()
        }
    }

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        // 创建参数
        let center = CGPoint(x: rect.width * 0.5, y: rect.height * 0.5)
        let radius = rect.width * 0.5 - 3
        let startAngle = CGFloat(-M_PI_2)
        let endAngle = CGFloat(2 * M_PI) * progress + startAngle
        
        // 创建贝塞尔曲线
        let path = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        // 绘制一条中心点的直线
        path.addLineToPoint(center)
        path.closePath()
        
        UIColor(white: 0.5, alpha: 0.5).setFill()
        
        path.fill()
    }

}
