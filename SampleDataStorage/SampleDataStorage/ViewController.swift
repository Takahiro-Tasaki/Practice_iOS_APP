//
//  ViewController.swift
//  SampleDataStorage
//
//  Created by tasaki_takahiro on 2018/08/15.
//  Copyright © 2018年 Takahiro Tasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        
        // textというキーを指定して保存していた値を取り出す
        if let value = userDefaults.string(forKey: "text") {
            // 取り出した値をテキストフィールドに設定
            textField.text = value
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // ボタンをタップした時の処理
    @IBAction func tapActionButton(_ sender: Any) {
        // UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        // textというキーで値を保存する
        userDefaults.set(textField.text, forKey: "text")
        // UserDefaultsへの値の保存を明示的に行う
        userDefaults.synchronize()
    }
}

