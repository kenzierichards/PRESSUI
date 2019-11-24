//
//  RMcalculatorViewController.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac2 on 11/24/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import Foundation
import UIKit


class RMcalculatorViewController: UIViewController
{
    // Calculate the RM
    
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var rmResultLabel: UILabel!
    @IBOutlet weak var repsTextField: UITextField!
    
    @IBAction func rmButton(_ sender: Any) {
        let reps = Double( self.repsTextField.text ?? "") ?? 12
        let weight = Double (self.weightTextField.text ?? "") ?? 0
        
        let rmResult = (weight/(1.0278 - 0.0278 * reps))
        self.rmResultLabel.text = " \(rmResult)"    }
}

