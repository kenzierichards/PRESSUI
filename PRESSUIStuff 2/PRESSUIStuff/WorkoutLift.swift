//
//  WorkoutLift.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac2 on 11/24/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//


//each set in a lift

import Foundation
import UIKit

class WorkoutLift
{
    var setNum: Int
    var weightNum: Int
    var repNum: Int
    
    init(setNum: Int, weightNum: Int, repNum: Int)
    {
        self.setNum = setNum
        self.weightNum = weightNum
        self.repNum = repNum
    }
}
