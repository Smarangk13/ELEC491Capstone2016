//Proj1ViewController.swift
//
//Written By:
//Siamak Rahmanian
//Group 45
//
//Description:
//Dynamic Projector Mount Team
//this file controls all the main functionalities of Projector 1
//including Pan, Tilt, and also has the capability to save and apply
//presets



import UIKit


class Proj1ViewController: UIViewController {
    var simpleBluetoothIO: SimpleBluetoothIO!



    override func viewDidLoad()
    {
        super.viewDidLoad()

        simpleBluetoothIO = SimpleBluetoothIO(serviceUUID: "19B10010-E8F2-537E-4F6C-D104768A1214", delegate: self)

        
        view.backgroundColor = UIColor.whiteColor()
        
//        panStepper.wraps = false
//        panStepper.autorepeat = true
//        panStepper.maximumValue = 180
//        panStepper.minimumValue = -180
//        
//        tiltStepper.wraps = false
//        tiltStepper.autorepeat = true
//        tiltStepper.maximumValue = 45
//        tiltStepper.minimumValue = -4
        
        if let pre1 = defaults.stringForKey("p1"){
            
            segmentedControl.setTitle(pre1, forSegmentAtIndex: 0)
            
        }else if let pre2 = defaults.stringForKey("p2"){
            
            segmentedControl.setTitle(pre2, forSegmentAtIndex: 1)
            
            }else if let pre3 = defaults.stringForKey("p3"){
            
        segmentedControl.setTitle(pre3, forSegmentAtIndex: 2)
            
        }else{
        }
        
        defaults.synchronize()
    }
//
//    
//   
//
//    
//////////////OUTLET LABELS BEGIN
    @IBOutlet weak var connectStatusLabel: UILabel!  //being used as the connection status label infront of CONNECT button//
    @IBOutlet weak var connectButtonOutlet: UIButton!
    @IBOutlet weak var panLabel: UILabel!
    @IBOutlet weak var panSlider: UISlider!
    @IBOutlet weak var panStepper: UIStepper!
    
    
    @IBOutlet weak var tiltLabel: UILabel!
    @IBOutlet weak var tiltSlider: UISlider!
    @IBOutlet weak var tiltStepper: UIStepper!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
///////////////OUTLET LABELS END///////////////////
//
//    
//    
//////////////GLOBAL VARIABLES BEGIN//////////////
    var panSel:[Float] = [0.0,0.0,0.0]
    var tiltSel:[Float] = [0.0,0.0,0.0]
    var currentValueTilt: Float = 0.0
    var currentValuePan: Float = 0.0
    var status: Bool = false
    var alert = UIAlertController()
    var timerPan = NSTimer()
    var timerTilt = NSTimer()
    var timerStatusPan: Bool = false
    var timerStatusTilt: Bool = false
    let UPDATE_TIME = (0.0826) //0.009602*8
    
    let defaults = NSUserDefaults.standardUserDefaults()
//////////////GLOBAL VARIALBES END////////////////
//
//    
//    
//    
/////////////TIMER FUNCTIONS FOR PAN BEGIN//////////
    func updatePanLabelForTimerAdd(){
     
        if (currentValuePan<180){
        currentValuePan += 1
        let x = currentValuePan
        panLabel.text = "\(x) Deg"
        panStepper.value = Double(x)
        panSlider.setValue(x, animated: true)
        }else{
            timerPan.invalidate()
            simpleBluetoothIO.writeValue(19)
        }
        
    }
    
    func updatePanLabelForTimerSub(){
        if (currentValuePan > -180){
        currentValuePan -= 1
        let x = currentValuePan
        panLabel.text = "\(x) Deg"
        panStepper.value = Double(x)
        panSlider.setValue(x, animated: true)
        }else{
            timerPan.invalidate()
            simpleBluetoothIO.writeValue(19)
        }
        
        
    }
///////////TIMER FUNCTIONS FOR PAN END////////////
//
//    
//    
//
///////////TIMER FUNCTIONS FOR TILT BEGIN/////////
    func updateTiltLabelForTimerAdd(){
        
        if (currentValueTilt<45){
            currentValueTilt += 1
            let x = currentValueTilt
            tiltLabel.text = "\(x) Deg"
            tiltStepper.value = Double(x)
            tiltSlider.setValue(x, animated: true)
        }else{
            timerTilt.invalidate()
            simpleBluetoothIO.writeValue(29)
        }
        
    }
    
    func updateTiltLabelForTimerSub(){
        if (currentValueTilt > -45){
            currentValueTilt -= 1
            let x = currentValueTilt
            tiltLabel.text = "\(x) Deg"
            tiltStepper.value = Double(x)
            tiltSlider.setValue(x, animated: true)
        }else{
            timerTilt.invalidate()
            simpleBluetoothIO.writeValue(29)
        }
        
        
    }
    ////////TIMER FUNCTIONS FOR TILT END/////////
    //
    //
    //
    //
    /////// UPDATING SAVABLE PRESET FUNCTIONS BEGIN////////
    func updatePanValueSeg(selIndexValue:Int){
        
        let a = panSel[selIndexValue]
        panLabel.text = "\(a) deg"
        panStepper.value = Double(a)
        panSlider.setValue(a, animated:true)
        
    }
    

    func updateTiltValueSeg(selIndexValue:Int){
        
        let b = tiltSel[selIndexValue]
        tiltLabel.text = "\(b) deg"
        tiltStepper.value = Double(b)
        tiltSlider.setValue(b, animated:true)
        
    }
    ///// UPDATING SAVABLE PRESET FUNCTIONS END////////
    //
    //
    //
    //
    ///// SENDING PAN/TILT VALUES TO ARDUINO BEGIN/////////
    func writeUpdatedPanToBle(input: Float){
        let x = input + 180
        let a = ((x * 10) % 128)
        let b = ((x * 10) / 128)
     
        simpleBluetoothIO.writeValue(1)
        simpleBluetoothIO.writeValue(Int8(a))
        simpleBluetoothIO.writeValue(Int8(b))
        
    
    }
    
    func writeUpdatedTiltToBle(input:Float){
        let x = input + 45
        let a = ((x * 10) % 128)
        let b = ((x * 10) / 128)
        
        simpleBluetoothIO.writeValue(2)
        simpleBluetoothIO.writeValue(Int8(a))
        simpleBluetoothIO.writeValue(Int8(b))
    }
    ///////SENDING PAN/TILT VALUES TO ARUDINO END ///////
    //
    //
    //
    //
    //
    ////// ALERT FUNCTIONALITY BEGIN ////////////////////
    func showAlert(inputMessage:Int) {
        var messageText: String = ""
        
        if NSClassFromString("UIAlertController") != nil {
            if (inputMessage == 1){
            messageText = "Please wait for movement to finish!! \n\n"
            };if(inputMessage == 10){
                messageText = "Ooops\n\n There seems to be a problem\n\n Please restart app \n\n"
            }
            alert = UIAlertController(title: "Message from Projector:", message: messageText, preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }
    
    func dismissAlert(){
        self.alert.dismissViewControllerAnimated(true, completion: nil)
    }
    
    /////// ALERT FUNCTIONALTY END /////////////////////
    //
    //
    //
    //
    /////////////////BUTTONS AND ACTIONS BEGIN ////////////////
    @IBAction func connectToArduino(sender: UIButton) {
    
        simpleBluetoothIO = SimpleBluetoothIO(serviceUUID: "19B10010-E8F2-537E-4F6C-D104768A1214", delegate: self)
 
    }
    

    /////////FAST FORWARD BUTTONS FOR PAN BEGIN/////////
    @IBAction func FF1TouchDownInside(sender: UIButton) {
        simpleBluetoothIO.writeValue(11)

        timerStatusPan = true
        timerPan = NSTimer.scheduledTimerWithTimeInterval(UPDATE_TIME, target:self, selector: Selector("updatePanLabelForTimerAdd"), userInfo: nil, repeats: timerStatusPan)
    }
    

    @IBAction func FF1TouchDownOutside(sender: UIButton) {
        simpleBluetoothIO.writeValue(19)
        writeUpdatedPanToBle(currentValuePan)
        timerStatusPan = false
        timerPan.invalidate()
    }

    @IBAction func FR1TouchDownInside(sender: UIButton) {
        simpleBluetoothIO.writeValue(12)
        timerStatusPan = true
        timerPan = NSTimer.scheduledTimerWithTimeInterval(UPDATE_TIME, target:self, selector: Selector("updatePanLabelForTimerSub"), userInfo: nil, repeats: timerStatusPan)
    }
    
    
    @IBAction func FR1TouchDownOutside(sender: UIButton) {
        simpleBluetoothIO.writeValue(19)
        writeUpdatedPanToBle(currentValuePan)
        timerStatusPan = false
        timerPan.invalidate()
    }
    /////////FAST FORWARD BUTTONS FOR PAN END//////////////
    //
    //
    //
    //
    ///////////FAST FORWARD BUTTONS FOR TILT BEGIN/////////
    
    @IBAction func FFTiltTouchDownInside(sender: UIButton) {
        simpleBluetoothIO.writeValue(21)
        
        timerStatusTilt = true
        timerTilt = NSTimer.scheduledTimerWithTimeInterval(UPDATE_TIME, target:self, selector: Selector("updateTiltLabelForTimerAdd"), userInfo: nil, repeats: timerStatusTilt)
    }
    
    @IBAction func FFTiltTouchDownOutside(sender: UIButton) {
        simpleBluetoothIO.writeValue(29)
        writeUpdatedTiltToBle(currentValueTilt)
        timerStatusTilt = false
        timerTilt.invalidate()
    }
    
    @IBAction func FRTiltTouchDownInside(sender: UIButton) {
        simpleBluetoothIO.writeValue(22)
        timerStatusTilt = true
        timerTilt = NSTimer.scheduledTimerWithTimeInterval(UPDATE_TIME, target:self, selector: Selector("updateTiltLabelForTimerSub"), userInfo: nil, repeats: timerStatusTilt)
    }
    
    @IBAction func FRTiltTouchDownOutside(sender: UIButton) {
        simpleBluetoothIO.writeValue(29)
        writeUpdatedTiltToBle(currentValueTilt)
        timerStatusTilt = false
        timerTilt.invalidate()
    }
    ////////FAST FOTWARD BUTTONS FOR TILT END/////////
    //
    //
    //
    //
    //
    //////SLIDER & STEPPER ACTIONS BEGIN///////
    @IBAction func panSliderAction(sender: UISlider)
    {
        currentValuePan = round(sender.value)
        let x =  currentValuePan
        panLabel.text = "\(x) Deg"
        panStepper.value = Double(x)
    }

    @IBAction func panStepperAction(sender: UIStepper) {
        
        currentValuePan = Float(round(sender.value))
        let x =  currentValuePan
        panLabel.text = "\(x) Deg"
        panSlider.setValue(x, animated: true)
    }
 
    @IBAction func tiltSliderAction(sender: UISlider) {
        currentValueTilt = round(sender.value)
        let x =  currentValueTilt
        tiltLabel.text = "\(x) Deg"
        tiltStepper.value = Double(x)

    }
    
    @IBAction func tiltStepperAction(sender: UIStepper) {
        
        currentValueTilt = Float(round(sender.value))
        let x =  currentValueTilt
        tiltLabel.text = "\(x) Deg"
        tiltSlider.setValue(x, animated: true)
    }
    
    @IBAction func panDidSend(sender: UIButton) {
        
        writeUpdatedPanToBle(currentValuePan)
 
    
    }
        @IBAction func tiltDidSend(sender: UIButton) {
        
        writeUpdatedTiltToBle(currentValueTilt)
  
    }
    ///// SLIDER & STEPPER ACTIONS END////////////
    //
    //
    //
    //
    //
    //
    /////////  +1/-1 ACTIONS BEGIN//////////////
    @IBAction func panMinusOne(sender: UIButton) {
        if(currentValuePan > -180){
        currentValuePan -= 1
        let x = currentValuePan
        panLabel.text = "\(x) Deg"
        panStepper.value = Double(x)
        panSlider.setValue(x, animated: true)
        writeUpdatedPanToBle(currentValuePan)
        }else{
            writeUpdatedPanToBle(currentValuePan)
        }
    }
    
    @IBAction func panPlusOne(sender: UIButton) {
        if (currentValuePan < 180){
        currentValuePan += 1
        let x = currentValuePan
        panLabel.text = "\(x) Deg"
        panStepper.value = Double(x)
        panSlider.setValue(x, animated: true)
        writeUpdatedPanToBle(currentValuePan)
        }else{
            writeUpdatedPanToBle(currentValuePan)
        }
        
    }
    

    @IBAction func tiltMinusOne(sender: UIButton) {
        if (currentValueTilt < 45){
        currentValueTilt += 1
        let x = currentValueTilt
        tiltLabel.text = "\(x) Deg"
        tiltStepper.value = Double(x)
        tiltSlider.setValue(x, animated: true)
        writeUpdatedTiltToBle(currentValueTilt)
        }else{
            writeUpdatedTiltToBle(currentValueTilt)
        }
        
    }
    
    @IBAction func tiltPlusOne(sender: UIButton) {
        if (currentValueTilt > -45){
        currentValueTilt -= 1
        let x = currentValueTilt
        tiltLabel.text = "\(x) Deg"
        tiltStepper.value = Double(x)
        tiltSlider.setValue(x, animated: true)
        writeUpdatedTiltToBle(currentValueTilt)
        }else{
        writeUpdatedTiltToBle(currentValueTilt)
        }
    }
    //////// +1/-1 ACTIONS END /////////////////
    //
    //
    //
    //
    //
    //////// SAVABLE PRESET SEGMENTED CONTROLS BEGIN//////////////
    @IBAction func segmentedControlAction(sender: UISegmentedControl){
    
        
        switch segmentedControl.selectedSegmentIndex{
            case 0:
                
            updatePanValueSeg(0)
            updateTiltValueSeg(0)
    
            break
            
            case 1:
            
            updatePanValueSeg(1)
            updateTiltValueSeg(1)

            break
            
            case 2:
                updatePanValueSeg(2)
                updateTiltValueSeg(2)

            break
            
            default:
            break
        }
    
    }
    
    
    @IBAction func saveButtonPressed(sender: UIButton) {
        
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            
            panSel.insert(currentValuePan, atIndex: 0)
            tiltSel.insert(currentValueTilt, atIndex: 0)
            break
        case 1:
            
            panSel.insert(currentValuePan, atIndex: 1)
            tiltSel.insert(currentValueTilt, atIndex: 1)
            break
        case 2:
            panSel.insert(currentValuePan, atIndex: 2)
            tiltSel.insert(currentValueTilt, atIndex: 2)
            break
            
        default:
            break
            
            
        }
    }
    
    
    @IBAction func applyButtonPressed(sender: UIButton) {

        
    switch segmentedControl.selectedSegmentIndex{
    case 0:
        
        writeUpdatedPanToBle(panSel[0])
        writeUpdatedTiltToBle(tiltSel[0])
     
    break
            
    case 1:
        writeUpdatedPanToBle(panSel[1])
        writeUpdatedTiltToBle(tiltSel[1])
   
    break
            
    case 2:
        writeUpdatedPanToBle(panSel[2])
        writeUpdatedTiltToBle(tiltSel[2])
    break
        
    default:
        break
        
        }
        
    }
    
}
    ///////// SAVABLE SEGMENTED CONTROL END /////////////
    //
    //
    //
    //
    //
    ////////  DELEGATE RECEIVING VALUES FROM ARDUINO BEGIN //////////

extension Proj1ViewController: SimpleBluetoothIODelegate {
    
    func didConnect(connectionValue: Bool) {
        if (connectionValue){
            connectButtonOutlet.backgroundColor = UIColor.greenColor()
            inputValueLabel.text = "Connected!"
        }else{
            connectButtonOutlet.backgroundColor = UIColor.grayColor()
            inputValueLabel.text = "Not Connected"
        }
    }
    
    func simpleBluetoothIO(simpleBluetoothIO: SimpleBluetoothIO, didReceiveValue value: Int8) {

        
        switch value{
        case 0:
            //ignore
            break
        case 1:
            // Movement started, show alert
            showAlert(1)
            break
        case 2:
            // finished movement, dismiss alert
            dismissAlert()
            
            break
        case 10:
            // error alert //
            showAlert(10)
            break
        default:
            break
            
        }

    }
}
    /////////// DELEGATE RECEIVING VALUES FROM ARDUINO END /////////////



