//
//  LiftHistoryScreen.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/18/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class LiftHistoryScreen: UIViewController {

    var liftHistoryArray: [LiftHistory] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        liftHistoryArray = createArray()
    }
    
    func createArray() -> [LiftHistory] {
        var tempLiftHistories: [LiftHistory] = []
        
        let liftHistory1 = LiftHistory(date: "11/3/19", sets: "3 sets", weight: "110 lb")
        let liftHistory2 = LiftHistory(date: "11/5/19", sets: "5 sets", weight: "100 lb")
        let liftHistory3 = LiftHistory(date: "11/7/19", sets: "1 sets", weight: "190 lb")

        tempLiftHistories.append(liftHistory1)
        tempLiftHistories.append(liftHistory2)
        tempLiftHistories.append(liftHistory3)
        
        return tempLiftHistories
    }
}

extension LiftHistoryScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return liftHistoryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let liftHistory = liftHistoryArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LiftHistoryCell") as! LiftHistoryCell
        
        cell.setLiftHistory(liftHistory: liftHistory)
        
        return cell
    }
}
