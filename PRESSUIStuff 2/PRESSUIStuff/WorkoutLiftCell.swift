//
//  WorkoutLiftCell.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac2 on 11/24/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class WorkoutLiftCell: UITableViewCell {

    @IBOutlet weak var setNum: UILabel!
    @IBOutlet weak var weightNum: UITextField!
    @IBOutlet weak var repNum: UITextField!
    
    func setWorkoutLift(workoutLift: WorkoutLift)
    {
        setNum.text = String(workoutLift.setNum)
        weightNum.text = String(workoutLift.weightNum)
        repNum.text = String(workoutLift.repNum)
    }
}
