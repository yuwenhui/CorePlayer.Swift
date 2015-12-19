//
//  Util.swift
//  xuetianxia
//
//  Created by Max on 15/10/22.
//  Copyright © 2015年 Winhu. All rights reserved.
//

import UIKit

class Util: NSObject {
    
    internal var params: AnyObject?
    
    class func GetViewController<T>(controllerName: String)->T {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let toViewController = mainStoryboard.instantiateViewControllerWithIdentifier(controllerName) as! T
        return toViewController
    }
    
    class func showMessage(message: String) {
        let alert = UIAlertView(title: "提醒", message: message, delegate: nil, cancelButtonTitle: "确定")
        alert.show()
    }
    
    class func getImageWithName(name: String) -> String {
        let fileUrl = "http://7xnbft.com2.z0.glb.qiniucdn.com/"
        let imageUrl = fileUrl + name
        return imageUrl
    }
}
