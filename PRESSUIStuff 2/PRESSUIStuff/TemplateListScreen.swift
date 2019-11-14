//
//  TemplateListScreen.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 11/13/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class TemplateListScreen: UIViewController {
    
    var templateArray: [WorkoutTemplate] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        templateArray = createArray()
    }
    
    func createArray() -> [WorkoutTemplate] {
        var tempArray: [WorkoutTemplate] = []
        
        let template1 = WorkoutTemplate(title:"Strong Curves Day A")
        let template2 = WorkoutTemplate(title:"Strong Curves Day B")
        let template3 = WorkoutTemplate(title:"Strong Curves Day C")
        
            tempArray.append(template1)
            tempArray.append(template2)
            tempArray.append(template3)
        
        return tempArray
    }
}

extension TemplateListScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return templateArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let template = templateArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TemplateCell") as! TemplateCell
        
        cell.setTemplate(template: template)
        
        return cell
    }
}
