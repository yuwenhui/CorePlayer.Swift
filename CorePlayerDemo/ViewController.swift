//
//  ViewController.swift
//  CorePlayer
//
//  Created by flexih on 4/14/15.
//  Copyright (c) 2015 flexih. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var corePlayer: CorePlayer = {
        let cp = CorePlayer()
        cp.moduleManager().initModules([ModuleView.self, ProgressView.self])
        return cp
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        corePlayer.view().frame = CGRect(x: 0, y: 64, width: self.view.bounds.size.width, height: self.view.bounds.height)
        corePlayer.view().autoresizingMask = UIViewAutoresizing.FlexibleWidth.union(UIViewAutoresizing.FlexibleHeight)
        view.addSubview(corePlayer.view())
      
        corePlayer.playURL(NSURL(string: "http://devimages.apple.com/samplecode/adDemo/ad.m3u8")!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

