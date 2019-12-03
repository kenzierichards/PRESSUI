//
//  EndShare.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac2 on 12/2/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import Foundation


import UIKit
class EndShare: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func SharePressed(_ sender: Any) {
        
        let activityVC = UIActivityViewController (activityItems: ["www.google.com"], applicationActivities: nil)
             activityVC.popoverPresentationController?.sourceView = self.view
             
             self.present( activityVC, animated: true, completion: nil)
    }
   
}
