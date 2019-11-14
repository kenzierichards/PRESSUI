//
//  WorkoutHistoryListScreen.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/13/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class WorkoutHistoryListScreen: UIViewController {

    var workoutHistoryArray: [PastWorkout] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        workoutHistoryArray = createArray()
    }
    
    func createArray() -> [PastWorkout] {
        var tempArray: [PastWorkout] = []
        
        let pastWorkout1 = PastWorkout(title: "Strong Curves Week 3 Day B", date: "11/13/19")
        let pastWorkout2 = PastWorkout(title: "Strong Curves Week 3 Day A", date: "11/12/19")
        
        tempArray.append(pastWorkout1)
        tempArray.append(pastWorkout2)
        
        return tempArray
    }
}

extension WorkoutHistoryListScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workoutHistoryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pastWO = workoutHistoryArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutHistoryCell") as! WorkoutHistoryCell
        
        cell.setPastWorkout(pastWO: pastWO)
        
        return cell
    }
}

