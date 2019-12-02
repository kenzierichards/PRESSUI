//
//  AddNewLiftScreen.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 12/2/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class AddNewLiftScreen: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var bodyPartPicker: UIPickerView!
    let pickerData = ["Legs", "Arms", "Back", "Abs"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.bodyPartPicker.delegate = self
        self.bodyPartPicker.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
}
