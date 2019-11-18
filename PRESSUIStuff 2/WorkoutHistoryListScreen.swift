//
//  WorkoutHistoryListScreen.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/18/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class WorkoutHistoryListScreen: UIViewController {

    var workoutHistoriesArray: [WorkoutHistory] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        workoutHistoriesArray = createArray()
    }
    
    func createArray() -> [WorkoutHistory] {
        var tempHistories: [WorkoutHistory] = []
        
        let history1 = WorkoutHistory(workoutHistoryTitle: "SC Day A", workoutHistoryDate:"11/3/19")
        let history2 = WorkoutHistory(workoutHistoryTitle: "SC Day B", workoutHistoryDate:"11/5/19")
        let history3 = WorkoutHistory(workoutHistoryTitle: "SC Day C", workoutHistoryDate:"11/7/19")

        tempHistories.append(history1)
        tempHistories.append(history2)
        tempHistories.append(history3)

        return tempHistories
    }
}

extension WorkoutHistoryListScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workoutHistoriesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let workoutHistory = workoutHistoriesArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutHistoryCell") as! WorkoutHistoryCell
        
        cell.setWorkoutHistory(workoutHistory: workoutHistory)
        
        return cell
    }
}
