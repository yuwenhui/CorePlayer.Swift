//
//  MainController.swift
//  CorePlayerDemo
//
//  Created by Max on 15/12/19.
//  Copyright © 2015年 flexih. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    @IBOutlet weak var btnPlay: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "首页"
        btnPlay.addTarget(self, action: Selector("onPlayClicked"), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func onPlayClicked() {
        let toViewController: ViewController = Util.GetViewController("ViewController")
        self.navigationController?.pushViewController(toViewController, animated: true)
    }
}
