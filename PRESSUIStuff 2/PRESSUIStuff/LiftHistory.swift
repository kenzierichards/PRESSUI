//
//  LiftHistory.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/18/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import Foundation
import UIKit

class LiftHistory {
    var date: String
    var sets: String
    var weight: String
    
    init(date: String, sets: String, weight: String) {
        self.date = date
        self.sets = sets
        self.weight = weight
    }
}
