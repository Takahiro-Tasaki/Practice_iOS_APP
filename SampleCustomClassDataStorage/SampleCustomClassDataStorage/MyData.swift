//
//  MyData.swift
//  SampleCustomClassDataStorage
//
//  Created by tasaki_takahiro on 2018/08/21.
//  Copyright © 2018年 Takahiro Tasaki. All rights reserved.
//

import Foundation

class MyData: NSObject, NSCoding {
    var valueString: String?

    override init() {
        
    }

    required init?(coder aDecoder: NSCoder) {
        valueString = aDecoder.decodeObject(forKey: "valueString") as? String
    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(valueString, forKey: "valueString")
    }
}
