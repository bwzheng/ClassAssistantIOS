//
//  AppDelegate.swift
//  ClassAssistant
//
//  Created by BOWEN ZHENG on 2/17/17.
//  Copyright © 2017 BOWEN ZHENG. All rights reserved.
//

import UIKit
import CoreLocation
import UserNotifications
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate, SRBeaconDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        (SRBeaconManager.sharedManager() as AnyObject).startBeconDetection();
        (SRBeaconManager.sharedManager() as AnyObject).setBeaconDelegate(self);
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options:[.badge, .alert, .sound]) { (granted, error) in
            // Enable or disable features based on authorization.
        }
        application.registerForRemoteNotifications()
        return true
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
        
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
    }
    
    
    
    
    func show(_ webViewController: SRWebViewController!) {
        
    }
    
    func startBeconDetection() {
        print("yay")
    }
    func launchLocalNotification(_ AlertText: String!, withRedirectURL redirectURL: String!, andOutletName outletName: String!) {
        print("testing")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    // MARK: - CLLocationManagerDelegate
    
}
//extension AppDelegate: CLLocationManagerDelegate {
//    func locationManager(manager: CLLocationManager!, didExitRegion region: CLRegion!) {
//        if let beaconRegion = region as? CLBeaconRegion {
//            var notification = UILocalNotification()
//            notification.alertBody = "Are you forgetting something?"
//            notification.soundName = "Default"
//            UIApplication.shared.presentLocalNotificationNow(notification)
//        }
//    }
//}

