//
//  AppDelegate.swift
//  GitHubOAuth
//
//  Created by Joel Bell on 7/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        return true
    }

    func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool {
        
        if let sourceAppKey = options["UIApplicationOpenURLOptionsSourceApplicationKey"] {
            
            if (String(sourceAppKey) == "com.apple.SafariViewService") {
                NSNotificationCenter.defaultCenter().postNotificationName(Notification.closeSafariVC, object: url)
                return true
            }
        }
        return true
    }


}

