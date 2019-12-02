//
//  LiftScreen.swift
//  PRESSUIStuff
//
//  Created by Ettinger003 iMac1 on 12/2/19.
//  Copyright © 2019 Ettinger003 iMac2. All rights reserved.
//

import UIKit

class LiftScreen: UIViewController {

    @IBOutlet weak var video: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo(videoKey: "SHsUIZiNdeY")

    }
    
    //sends request to get YouTube video and display in WebView
    func getVideo(videoKey:String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoKey)")
        video.loadRequest(URLRequest(url: url!))
    }
    

}
