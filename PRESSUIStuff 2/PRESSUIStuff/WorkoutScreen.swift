//
//  WorkoutScreen.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac2 on 11/24/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class WorkoutScreen: UIViewController {

    var liftSets: [WorkoutLift] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        liftSets = createArray()
    }
    
    func createArray() -> [WorkoutLift] {
        var tempArray: [WorkoutLift] = []
        
        let set1 = WorkoutLift(setNum: 1, weightNum: 100, repNum: 20)
        let set2 = WorkoutLift(setNum: 2, weightNum: 100, repNum: 20)
        let set3 = WorkoutLift(setNum: 3, weightNum: 100, repNum: 25)
        
        tempArray.append(set1)
        tempArray.append(set2)
        tempArray.append(set3)
        
        return tempArray
    }
 
}

extension WorkoutScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return liftSets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let workoutSet = liftSets[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutLiftCell") as! WorkoutLiftCell
        
        cell.setWorkoutLift(workoutLift: workoutSet)
        
        return cell
    }
}
