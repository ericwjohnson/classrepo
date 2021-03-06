//
//  SettingsViewController.swift
//  Tipcal
//
//  Created by Eric Johnson on 3/8/17.
//  Copyright © 2017 Eric Johnson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

//    @IBOutlet weak var sliderSwitch: UISwitch!
    
    @IBOutlet weak var defaultTipSelector: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = UserDefaults()
        let selectedDefault = defaults.integer(forKey: "defaultTip")
        
        defaultTipSelector.selectedSegmentIndex = selectedDefault
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectDefault(_ sender: Any) {
        //let tipPercents = [0.18,0.20,0.25]
        let defaults = UserDefaults()
        let selectedDefault = defaultTipSelector.selectedSegmentIndex
        
        
        defaults.setValue(selectedDefault, forKey: "defaultTip")
  
       
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
