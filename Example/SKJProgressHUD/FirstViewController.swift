//
//  FirstViewController.swift
//  SJProgressHUD
//
//  Created by sahi joshi on 10/2/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SKJProgressHUD.sharedInstance.dismissHudOnBackgroundTap = true
    }
    
    @IBAction func show(_ sender: Any) {
        SKJProgressHUD.show()
    }

    @IBAction func showWithStatus(_ sender: Any) {
        SKJProgressHUD.show(withStatus: "Loading...", style: .gray, mask: .dark)
    }
    
    @IBAction func showAlertMessage(_ sender: Any) {
        SKJProgressHUD.showAlertMessage(withTitle: "Connection Error", message: "Check your internet connection and try again later.", delay: 3, mask: .dark)
    }
    
    @IBAction func showAlertMessageWithOptions(_ sender: Any) {
        SKJProgressHUD.showAlertMessageWithOptions(message: "Are you sure you want to log out?", maskType:.dark, okAction: { (ok) in
            // ok action
            if ok {
                SKJProgressHUD.dismiss()
                print("perform action after ok")
            }
        }) { (cancel) in
            // close action
            if cancel {
                SKJProgressHUD.dismiss()
                print("perform action after cancel")
            }
        }
    }
    
    @IBAction func showProgressBar(_ sender: Any) {
        SKJProgressHUD.showProgressBar("Downloading", totalCount: 10000, mask: .dark)
        DispatchQueue.global(qos: .background).async {
            for progress in 1...10000 {
                DispatchQueue.main.sync {
                    SKJProgressHUD.sharedInstance.progressValue = progress
                }
            }
        }
    }
    
    @IBAction func dismiss(_ sender: Any) {
        SKJProgressHUD.dismiss()
    }
    
    
}
