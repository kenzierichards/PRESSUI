//
//  LiftListScreen.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/13/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class LiftListScreen: UIViewController {
    var liftArray: [Lift] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        liftArray = createArray()
    }
    
    func createArray() -> [Lift] {
        var tempArray: [Lift] = []
        
        let lift1 = Lift(title: "Glute Bridge")
        let lift2 = Lift(title: "Pull-Up")
        let lift3 = Lift(title: "Squat")
        let lift4 = Lift(title: "Deadlift")
        
        tempArray.append(lift1)
        tempArray.append(lift2)
        tempArray.append(lift3)
        tempArray.append(lift4)
        
        return tempArray
    }
}
    
extension LiftListScreen: UITableViewDataSource, UITableViewDelegate {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return liftArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let lift = liftArray[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "LiftCell") as! LiftCell
            
            cell.setLift(lift: lift)
            
            return cell
        }
    }
