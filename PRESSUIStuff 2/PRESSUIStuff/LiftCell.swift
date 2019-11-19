//
//  ExerciseCell.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/13/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class LiftCell: UITableViewCell {

    @IBOutlet weak var liftTitleLabel: UILabel!
    
    func setLift(lift: Lift) {
        liftTitleLabel.text = lift.title
    }
}
