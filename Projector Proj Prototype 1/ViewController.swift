//
//  ViewController.swift
//  Projector Proj Prototype 1
//
//  Created by Mak R on 2016-11-17.
//  Copyright © 2016 Mak R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Pan Stepper Initializations:
        panStepper.wraps = false
        panStepper.autorepeat = true
        panStepper.maximumValue = 180
        panStepper.minimumValue = -180
        
        //Tilt Stepper Initializations:
        tiltStepper.wraps = false
        tiltStepper.autorepeat = true
        tiltStepper.maximumValue = 30
        tiltStepper.minimumValue = -30
        
        heightStepper.wraps = false
        heightStepper.autorepeat = true
        heightStepper.maximumValue = 10
        heightStepper.minimumValue = 0
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //Pan References:
    @IBOutlet var panLabel: UILabel!
    @IBOutlet var panSlider: UISlider!
    @IBOutlet var panStepper: UIStepper!
    var currentValuePan: Float = 0.0
    
    //Tilt References:
    @IBOutlet var tiltLabel: UILabel!
    @IBOutlet var tiltSlider: UISlider!
    @IBOutlet var tiltStepper: UIStepper!
    var currentValueTilt: Float = 0.0
    
    //height References
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var heightStepper: UIStepper!
    var currentValueHeight: Float = 0.0
   
    
    
    //Pan Actions:
    @IBAction func panSliderAction(sender: UISlider) {
        currentValuePan = sender.value
        let x = round(currentValuePan)
        panLabel.text = "\(x) Degrees"
        panStepper.value = Double(x)
    }
    
    @IBAction func panStepperAction(sender: UIStepper) {
        currentValuePan = Float(sender.value)
        let x = round(10 * currentValuePan)/10
        panLabel.text = "\(x) Degrees"
        panSlider.setValue(x, animated: true)
    }

    

    //Tilt Actions
    @IBAction func tiltSliderAction(sender: UISlider) {
        currentValueTilt = sender.value
        let x = round(currentValueTilt)
        tiltLabel.text = "\(x) Degrees"
        tiltStepper.value = Double(x)
    }
    

    @IBAction func tiltStepperAction(sender: UIStepper) {
        currentValueTilt = Float(sender.value)
        let x = round(10 * currentValueTilt)/10
        tiltLabel.text = "\(x) Degrees"
        tiltSlider.setValue(x, animated: true)
    }
    
    
    @IBAction func heightSliderAction(sender: UISlider) {
        currentValueHeight = sender.value
        let x = round(currentValueHeight)
        heightLabel.text = "\(x) cm"
        heightStepper.value = Double(x)
    }
 
    
    @IBAction func heightStepperAction(sender: UIStepper) {
        currentValueHeight = Float(sender.value)
        let x = round(10 * currentValueHeight)/10
        heightLabel.text = "\(x) cm"
        heightSlider.setValue(x, animated: true)
    }
    
    
    
    
    
}

