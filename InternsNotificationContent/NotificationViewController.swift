//
//  NotificationViewController.swift
//  TestNotif
//
//  Created by Arush Sharma on 24/05/23.
//

import UIKit
import UserNotifications
import UserNotificationsUI
import MoEngageRichNotification


class NotificationViewController: UIViewController, UNNotificationContentExtension {

    @IBOutlet var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
        MoEngageSDKRichNotification.setAppGroupID("group.moengage.alphadevs.moengage")

    }
    
    func didReceive(_ notification: UNNotification) {
        self.label?.text = notification.request.content.body
        MoEngageSDKRichNotification.addPushTemplate(toController: self, withNotification: notification)

    }

}
