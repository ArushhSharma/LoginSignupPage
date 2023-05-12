//
//  AppDelegate.swift
//  LoginSignupPage
//
//  Created by Arush Sharma on 10/05/23.
//
import UIKit

import MoEngageSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    @IBOutlet weak private var UserName: UITextField!



   

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
     
         //Add your MoEngage App ID
         var sdkConfig = MoEngageSDKConfig(withAppID: "BQBLHI0GC3I0GGOALY7AHWXL" )
         // Separate initialization methods for Dev and Prod initializations
        sdkConfig.moeDataCenter = .data_center_01
        sdkConfig.enableLogs = true
        
         #if DEBUG
             MoEngage.sharedInstance.initializeDefaultTestInstance(sdkConfig, sdkState: .enabled)
         #else
             MoEngage.sharedInstance.initializeDefaultLiveInstance(sdkConfig, sdkState: .enabled)
         #endif
    
     //Rest of the implementation of method
     //-------
     return true
   }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

