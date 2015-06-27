//
//  AppDelegate.swift
//  welcome-guide
//
//  Created by Philip Heinser on 27.06.15.
//  Copyright (c) 2015 Philip Heinser. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        window?.tintColor = UIColor(red: 30/255.0, green: 82/255.0, blue: 148/255.0, alpha: 1)
        
//        [Parse enableLocalDatastore];
//        
//        // Initialize Parse.
//        [Parse setApplicationId:@"4UnxzvEFw6hzs87Ux6XVJlmJ6LbNcOp9dZLhVHnL"
//        clientKey:@"58BBTSKfVWq1gs8wLVpLqtR9cidtECI13iClntm8"];
//        
//        // [Optional] Track statistics around application opens.
//        [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
        
        Parse.enableLocalDatastore()
        Parse.setApplicationId("dS3rAMmDvIsvWkBWyS9txTRlSNYPpIFboZ8eRReK", clientKey: "VwlKPXDal0BVlol4q2zxJWxwzUFO7Eaw6Z1TsZVN")
        PFAnalytics.trackAppOpenedWithLaunchOptionsInBackground(launchOptions, block: { (success, error) -> Void in
            if let err = error {
                print(err)
            }
        })
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

