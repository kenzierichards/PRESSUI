//
//  WorkoutHistoryCell.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/18/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class WorkoutHistoryCell: UITableViewCell {

    @IBOutlet weak var workoutHistoryTitle: UILabel!
    @IBOutlet weak var workoutHistoryDate: UILabel!
    
    func setWorkoutHistory(workoutHistory: WorkoutHistory) {
        workoutHistoryTitle.text = workoutHistory.workoutHistoryTitle
        workoutHistoryDate.text = workoutHistory.workoutHistoryDate
    }
}
