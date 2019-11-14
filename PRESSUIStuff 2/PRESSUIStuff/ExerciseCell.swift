//
//  ExerciseCell.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/13/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class ExerciseCell: UITableViewCell {

    @IBOutlet weak var exerciseTitleLabel: UILabel!
    
    func setExercise(exercise: Exercise) {
        exerciseTitleLabel.text = exercise.title
    }
}
