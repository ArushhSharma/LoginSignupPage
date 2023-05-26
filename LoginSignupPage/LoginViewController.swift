//
//  LoginViewController.swift
//  LoginSignupPage
//
//  Created by Arush Sharma on 11/05/23.
//

import UIKit
import MoEngageSDK
import MoEngageInApps
import MoEngageCards
import MoEngageInbox

class LoginViewController: UIViewController {
    
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Location: UITextField!
    @IBOutlet weak var UID: UITextField!
    
    @IBOutlet weak var Phone: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Cards(_ sender: Any) {
        
    
        MoEngageSDKCards.sharedInstance.presentCardsViewController()

        
    }
    @IBAction func NotificationCentre(_ sender: Any) {
        
        MoEngageSDKInbox.sharedInstance.presentInboxViewController(withUIConfiguration: nil)

    
    }
    @IBAction func LoginButton(_ sender: Any) {
        MoEngageSDKAnalytics.sharedInstance.setLastName(LastName.text ?? "")
        MoEngageSDKAnalytics.sharedInstance.setFirstName(FirstName.text ?? "")
        MoEngageSDKAnalytics.sharedInstance.setUniqueID(UID.text ?? "")
        MoEngageSDKAnalytics.sharedInstance.setEmailID(UID.text ?? "")
        MoEngageSDKAnalytics.sharedInstance.setMobileNumber(Phone.text ?? "")
        MoEngageSDKAnalytics.sharedInstance.trackEvent("SignUp", withProperties: nil)
        MoEngageSDKInApp.sharedInstance.showInApp()

        

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
