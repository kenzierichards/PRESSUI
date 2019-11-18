//
//  LiftHistoryCell.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/18/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class LiftHistoryCell: UITableViewCell {

    @IBOutlet weak var liftHistoryDate: UILabel!
    @IBOutlet weak var liftHistorySets: UILabel!
    @IBOutlet weak var liftHistoryWeight: UILabel!
    
    func setLiftHistory(liftHistory: LiftHistory) {
        liftHistoryDate.text = liftHistory.date
        liftHistorySets.text = liftHistory.sets
        liftHistoryWeight.text = liftHistory.weight
    }
}
