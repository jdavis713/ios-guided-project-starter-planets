//
//  SettingsViewController.swift
//  Planets
//
//  Created by Jordan Davis on 5/9/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

//After we configured the collection VC, we connect the wiring for the VC

import UIKit

//Step 4: create and extension
extension String {
    static var shouldShowPlutoKey = "shouldShowPlutoKey"
}

class SettingsViewController: UIViewController {
    //step 3: create viewWillAppear func and call our update views
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
        
    }
    
   //Step 1: create outlets for buttons
    @IBAction func done(_ sender: Any) {
        dismiss(animated: true, completion: nil) //we use this because our segue was modal
    }
    
    @IBAction func changeShouldShowPluto(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey) // now we pass the string with an extension, then create an update views func. this is low level persistence 
        
    }
    
    private func updateViews() {
        let userDefaults = UserDefaults.standard
        shouldShowPlutoSwitch.isOn = userDefaults.bool(forKey: .shouldShowPlutoKey)
    }
    
    @IBOutlet var shouldShowPlutoSwitch: UISwitch!
    
}
