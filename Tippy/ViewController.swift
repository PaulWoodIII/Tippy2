//
//  ViewController.swift
//  Tippy
//
//  Created by Paul Wood on 8/15/16.
//  Copyright © 2016 Paul Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    
    @IBOutlet weak var satisfactionLabel: UILabel!
    
    @IBOutlet weak var satisfactionSlider: UISlider!
    
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
    // "😲😭😕😶🙂😀😍"
    @IBAction func satisfactionSliderValueChanged(sender: AnyObject) {
        
        updateViews()
    }

    func updateViews(){
        
        var sat = satisfactionSlider.value
        var satisfactionText = "😶"
        var tip = 0.0
        
        if sat < 0.15 {
            satisfactionText = "😲"
            tip = 0.0
        }
        else if sat < 0.30 {
            satisfactionText = "😭"
            tip = 0.01
        }
        else if sat < 0.45 {
            satisfactionText = "😕"
            tip = 0.08
        }
        else if sat < 0.60 {
            satisfactionText = "😶"
            tip = 0.12
        }
        else if sat < 0.75 {
            satisfactionText = "🙂"
            tip = 0.15
        }
        else if sat < 0.90 {
            satisfactionText = "😀"
            tip = 0.18
        }
        else {
            satisfactionText = "😍"
            tip = 0.5
        }
        
        satisfactionLabel.text = satisfactionText
        var amount = Double(amountTextField.text!)!
        tipLabel.text = "\(amount * tip)"
        totalLabel.text = "\( (amount * tip) + amount )"
    }
    
}

