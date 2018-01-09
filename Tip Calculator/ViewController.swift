//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Computer Science Workplace on 1/8/18.
//  Copyright © 2018 Varun Jit Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        billLabel?.text = (billLabel?.text!)! + String(sender.tag-1)
    }
    
    @IBAction func resetText(_ sender: UIButton) {
        if billLabel?.text != nil
        {
            billLabel?.text = ""
        }
    }
    
    @IBAction func decimalButton(_ sender: UIButton) {
        billLabel?.text = (billLabel?.text!)! + String(".")
    }
    
    @IBAction func tipSlider(_ sender: UISlider) {
        sliderLabel?.text = String(sender.value)
        let tipPercent = sender.value/100
        
        if billLabel?.text != nil
        {
            let billNum = Float(billLabel.text!) ?? 0
            let tipNum = billNum*tipPercent
            tipLabel?.text = String(tipNum)
            totalLabel.text = String(billNum+tipNum)
        }
        
    }
    

}

