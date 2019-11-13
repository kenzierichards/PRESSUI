//
//  ViewController.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac2 on 11/4/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let cellId = "cellId"
    struct Objects {
        
        var exerciseName :String!
        var exerciseObjects : [String]!
    }
    var objectsArray = [Objects] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        objectsArray = [Objects(exerciseName: "A", exerciseObjects: ["Abs"," Ab wheel", "Aerobics", "Around the World", "Arnauld", "Alice", "Armand"])]
        objectsArray = [Objects(exerciseName: "B", exerciseObjects: ["Abs"," Ab wheel", "Aerobics", "Around the World", "Arnauld", "Alice", "Armand"])]
        objectsArray = [Objects(exerciseName: "C", exerciseObjects: ["Abs"," Ab wheel", "Aerobics", "Around the World", "Arnauld", "Alice", "Armand"])]
        objectsArray = [Objects(exerciseName: "D", exerciseObjects: ["Abs"," Ab wheel", "Aerobics", "Around the World", "Arnauld", "Alice", "Armand"])]
        objectsArray = [Objects(exerciseName: "E", exerciseObjects: ["Abs"," Ab wheel", "Aerobics", "Around the World", "Arnauld", "Alice", "Armand"])]
        objectsArray = [Objects(exerciseName: "F", exerciseObjects: ["Abs"," Ab wheel", "Aerobics", "Around the World", "Arnauld", "Alice", "Armand"])]
        objectsArray = [Objects(exerciseName: "G", exerciseObjects: ["Abs"," Ab wheel", "Aerobics", "Around the World", "Arnauld", "Alice", "Armand"])]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = objectsArray[indexPath.section].exerciseObjects [indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectsArray[section].exerciseObjects.count
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return objectsArray.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return objectsArray[section].exerciseName
    }


}

