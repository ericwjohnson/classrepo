//
//  ViewController.swift
//  Tipcal
//
//  Created by Eric Johnson on 3/5/17.
//  Copyright © 2017 Eric Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipSlider: UISlider!

    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var currPercentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // make bill entry active and open the keyboard
        
        billField.becomeFirstResponder()
        
        var sliderVal : Float
        let defaults = UserDefaults()
        let selectedDefault = defaults.integer(forKey: "defaultTip")
        
        if (selectedDefault == 0){
            sliderVal = 0.18
        }
        else if (selectedDefault == 1){
                sliderVal = 0.20
            }
        else {
            
        sliderVal = 0.25
        }
        
        
        tipSlider.setValue(sliderVal, animated: true)
        currPercentLabel.text = String(format:"%.0f",tipSlider.value * 100) + "%"
    }
    
    @IBAction func tipSliderChanged(_ sender: Any) {
        currPercentLabel.text = String(format:"%.0f",tipSlider.value * 100) + "%"
        calulateTip(Any.self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        self.billField.becomeFirstResponder()
        
    }

    @IBAction func calulateTip(_ sender: Any) {
        
        
        let bill = Double(billField.text!) ?? 0
        let tipPercent = tipSlider.value
        let tip = bill * Double(tipPercent)
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func percentChanged(_ sender: Any) {
        calulateTip(Any.self)
    }

}

