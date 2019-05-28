//
//  ViewController.swift
//  DynamicAppIcons
//
//  Created by Premkumar  on 27/05/19.
//  Copyright © 2019 Kathiresan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func icon1(_ sender: Any) {
        setIcon(iconName: "AppIcon-1")
    }
    
    @IBAction func icon2(_ sender: Any) {
        setIcon(iconName: "AppIcon-2")
    }
    
    @IBAction func icon3(_ sender: Any) {
        setIcon(iconName: "AppIcon-3")
    }
    
    func setIcon(iconName: String) {
        
        guard UIApplication.shared.supportsAlternateIcons else {
            return
        }
        
        UIApplication.shared.setAlternateIconName(iconName) { (error) in
            if let error = error {
                print("Error: \(error)")
            } else {
                print("App icon updated.")
            }
        }
    }
}

