//
//  TemplateCell.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/13/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class TemplateCell: UITableViewCell {

    @IBOutlet weak var templateName: UILabel!
    
    func setTemplate (template: WorkoutTemplate) {
        templateName.text = template.title
    }

}
