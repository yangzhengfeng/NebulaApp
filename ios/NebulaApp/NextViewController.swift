//
//  NextViewController.swift
//  NebulaApp
//
//  Created by bnq-yang on 2019/12/11.
//  Copyright © 2019 bnq-yang. All rights reserved.
//

import UIKit
import React

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.lightGray
        // Do any additional setup after loading the view.
        
        
                let url = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
                let rootView = RCTRootView(
                    bundleURL: url,
                    moduleName: "NebulaApp",//这里的名字要和app.json中相同
                    initialProperties: nil,
                    launchOptions: nil
                )
                view = rootView
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
