//
//  ViewController.swift
//  Tipcal
//
//  Created by Eric Johnson on 3/5/17.
//  Copyright © 2017 Eric Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipSelector: UISegmentedControl!

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let defaults = UserDefaults()
        let selectedDefault = defaults.integer(forKey: "defaultTip")
        
        tipSelector.selectedSegmentIndex = selectedDefault
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func calulateTip(_ sender: Any) {
        
        let tipPercents = [0.18,0.20,0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercents[tipSelector.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func percentChanged(_ sender: Any) {
        calulateTip(Any.self)
    }

}

