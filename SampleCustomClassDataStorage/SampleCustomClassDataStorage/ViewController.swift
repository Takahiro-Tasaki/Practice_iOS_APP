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

        // シリアライズ処理
        let archiveData = NSKeyedArchiver.archivedData(withRootObject: data)
        userDefaults.set(archiveData, forKey: "data")
        userDefaults.synchronize()

        // デシリアライズ処理
        if let storedData = userDefaults.object(forKey: "data") as? Data {
            if let unarchivedData = NSKeyedUnarchiver.unarchiveObject(with: storedData) as? MyData {
                if let valuseString = unarchivedData.valueString {
                    print("デシリアライズデータ：" + valuseString)
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

