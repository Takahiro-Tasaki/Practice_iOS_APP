//
//  ViewController.swift
//  SampleCustomClassDataStorage
//
//  Created by tasaki_takahiro on 2018/08/21.
//  Copyright © 2018年 Takahiro Tasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // 画面表示時にデータを格納
        let userDefaults = UserDefaults.standard
        let data = MyData()
        data.valueString = "test"
        userDefaults.set(data, forKey: "data")
        userDefaults.synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

