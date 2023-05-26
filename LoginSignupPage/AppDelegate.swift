//
//  AppDelegate.swift
//  LoginSignupPage
//
//  Created by Arush Sharma on 10/05/23.
//
import UIKit

import MoEngageSDK
import MoEngageInbox
import SystemConfiguration
import MoEngageCards
import MoEngageRichNotification

@main
class AppDelegate: UIResponder, UIApplicationDelegate, MoEngageMessagingDelegate, UNUserNotificationCenterDelegate, MoEngageInboxViewControllerDelegate {
   
    @IBOutlet weak private var UserName: UITextField!
    
    @IBAction func Cards(_ sender: Any) {
        
        MoEngageSDKCards.sharedInstance.presentCardsViewController()
    }
    
   
    

      
    

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        MoEngageSDKMessaging.sharedInstance.setMessagingDelegate(self)
        

        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
//    MoEngageSDKRealTimeTrigger.sharedInstance.syncRealTimeTriggers { (rtSyncCompleted) in
//              if(rtSyncCompleted){
//                 print("Real-Time trigger sync successfull")
//          }
//    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
     
         //Add your MoEngage App ID
         var sdkConfig = MoEngageSDKConfig(withAppID: "2877NHMD0TOHATHC6NNHDERW" )
         // Separate initialization methods for Dev and Prod initializations
        sdkConfig.moeDataCenter = .data_center_01
        sdkConfig.enableLogs = true
        
         #if DEBUG
             MoEngage.sharedInstance.initializeDefaultTestInstance(sdkConfig, sdkState: .enabled)
         #else
             MoEngage.sharedInstance.initializeDefaultLiveInstance(sdkConfig, sdkState: .enabled)
         #endif
        MoEngageSDKMessaging.sharedInstance.registerForRemoteNotification(withCategories: nil, andUserNotificationCenterDelegate: self)
    
     //Rest of the implementation of method
     //-------
     return true
   }
    
    


}

