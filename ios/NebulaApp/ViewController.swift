//
//  ViewController.swift
//  NebulaApp
//
//  Created by bnq-yang on 2019/12/11.
//  Copyright © 2019 bnq-yang. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //        self.view.backgroundColor = UIColor.lightGray

        
        //        let brdge = RCTBridge(delegate: self as! RCTBridgeDelegate, launchOptions: nil) as! RCTBridge
        //        let rootView = RCTRootView(bridge: brdge, moduleName: "RNHighScores", initialProperties: nil)
        //        self.view = rootView
        
        let url = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        let rootView = RCTRootView(
            bundleURL: url,
            moduleName: "NebulaApp",//这里的名字要和app.json中相同
            initialProperties: nil,
            launchOptions: nil
        )
        view = rootView
    }
    
    
}

