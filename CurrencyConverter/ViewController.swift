//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by mac user on 31/05/2017.
//  Copyright © 2017 mac user. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
            
        }
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        rupeeLabel.text = "\(dollarAmount * rupeeRate)"
        dollarAmount = 0.0
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        inputTextField.text = ""
    }
    
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var rupeeLabel: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    let poundRate = 0.78
    let yenRate = 111.54
    let euroRate = 0.89
    let rupeeRate = 0.016
    var dollarAmount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Called when 'return' key is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    //Called when user taps outside the field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }


}

