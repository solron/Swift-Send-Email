//
//  ViewController.swift
//  Swift-Send-Email
//
//  Created by Ronny Soltveit on 04/05/16.
//  Copyright © 2016 Ronny Soltveit. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {
    @IBAction func btnSendEmail(sender: AnyObject) {
        let email = MFMailComposeViewController()
        email.mailComposeDelegate = self
        email.setSubject("My subject")
        email.setMessageBody("Some example text", isHTML: false) // or true, if you prefer
        email.setToRecipients(["ronny@soltveit.org"])
        if MFMailComposeViewController.canSendMail() {
            presentViewController(email, animated: true, completion: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

