//
//  ViewController.swift
//  UIBezierPathDemo
//
//  Created by 周鹏钜 on 16/10/22.
//  Copyright © 2016年 周鹏钜. All rights reserved.
//

import UIKit
 
class ViewController: UIViewController {
    
    var i : CGFloat = 0.01

    private lazy var progressView : ProgressView = ProgressView()
    
    private lazy var timer : NSTimer = NSTimer(timeInterval: 0.1, target: self, selector: "hahhahah", userInfo: nil, repeats: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(progressView)
        
        progressView.bounds = CGRect(x: 0, y: 0, width: 200, height: 200)
        
        progressView.center = CGPoint(x: UIScreen.mainScreen().bounds.width * 0.5, y: UIScreen.mainScreen().bounds.height * 0.5)
        
        progressView.backgroundColor = UIColor.clearColor()
        
        NSRunLoop.mainRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
     }

    func hahhahah() {
    
        i += 0.01
        progressView.progress = i
    }
}

