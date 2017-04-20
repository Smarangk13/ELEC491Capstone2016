//
//  SettingsViewController.swift
//  DynamicProjMount
//
//  Created by Mak R on 2017-03-27.
//  Copyright © 2017 Mak R. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad(){
        print("loaded")
        defaults.synchronize()
        
    }

    
    @IBOutlet weak var presetOneTextField: UITextField!
    @IBOutlet weak var presetTwoTextField: UITextField!
    @IBOutlet weak var presetThreeTextField: UITextField!
    
    @IBOutlet weak var presetOneLabel: UILabel!
    @IBOutlet weak var presetTwoLabel: UILabel!
    @IBOutlet weak var presetThreeLabel: UILabel!
    
    
    var preset1: String = "Preset 1"
    var preset2: String = "Preset 2"
    var preset3: String = "Preset 3"
    let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBAction func saveOne(sender: UIButton) {
        presetOneLabel.text = presetOneTextField.text
        preset1 = presetOneTextField.text!
        defaults.setValue(preset1, forKey: "p1")
    }
    @IBAction func saveTwo(sender: UIButton) {
        presetTwoLabel.text = presetTwoTextField.text
        preset1 = presetTwoTextField.text!
        defaults.setValue(preset2, forKey: "p2")
    }
    @IBAction func saveThree(sender: UIButton) {
        presetThreeLabel.text = presetThreeTextField.text
        preset3 = presetThreeTextField.text!
        defaults.setValue(preset3, forKey: "p3")
        
    }
    

    
    

    
    
    
    
    
    
}
