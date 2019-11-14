//
//  ExerciseListScreen.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/13/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class ExerciseListScreen: UIViewController {
    var exerciseArray: [Exercise] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exerciseArray = createArray()
    }
    
    func createArray() -> [Exercise] {
        var tempArray: [Exercise] = []
        
        let exercise1 = Exercise (title: "Glute Bridge")
        let exercise2 = Exercise (title: "Pull-Up")
        let exercise3 = Exercise (title: "Squat")
        let exercise4 = Exercise (title: "Deadlift")
        
        tempArray.append(exercise1)
        tempArray.append(exercise2)
        tempArray.append(exercise3)
        tempArray.append(exercise4)
        
        return tempArray
    }
}
    
extension ExerciseListScreen: UITableViewDataSource, UITableViewDelegate {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return exerciseArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let exercise = exerciseArray[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseCell") as! ExerciseCell
            
            cell.setExercise(exercise: exercise)
            
            return cell
        }
    }
