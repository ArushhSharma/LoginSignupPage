//
//  ViewController.swift
//  LoginSignupPage
//
//  Created by Arush Sharma on 10/05/23.
//

import UIKit
import MoEngageSDK

class ViewController: UIViewController {

    @IBAction func Logout(_ sender: Any) {
        MoEngageSDKAnalytics.sharedInstance.resetUser()

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

