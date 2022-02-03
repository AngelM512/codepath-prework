//
//  ViewController.swift
//  Prework
//
//  Created by Angel Moreta on 1/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func CalculateTip(_ sender: Any) {
        // get the bill amount from text field input
        let defaultVal = 0.0
        let bill = Double(BillAmountTextField.text!) ?? defaultVal
        
        //get total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        // Update tip amount label
        TipAmountLabel.text = String(format: "$%.2f", tip)
        // Update total amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

