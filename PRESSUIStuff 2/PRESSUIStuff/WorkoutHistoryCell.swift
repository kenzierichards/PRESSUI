//
//  WorkoutHistoryCell.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/14/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class WorkoutHistoryCell: UITableViewCell {

    @IBOutlet weak var WorkoutHistoryTitle: UILabel!
    @IBOutlet weak var WorkoutHistoryDate: UILabel!
    
    func setPastWorkout(pastWO: PastWorkout) {
        WorkoutHistoryTitle.text = pastWO.title
        WorkoutHistoryDate.text = pastWO.date
    }
}
