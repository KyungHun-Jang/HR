//
//  HRModel.swift
//  HR
//
//  Created by ktds 10 on 30/04/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//
import UIKit
import Foundation

class HRModel {
    var arrayList = Array<Any>()
    
    init() {
        let dicInfo = ["name":"IU", "desc":"Good day"]
        
        arrayList.append(dicInfo)
        arrayList.append(["name":"BTS", "desc":"피 땀 눈물"])
        arrayList.append(["name":"승리", "desc":"버닝 썬"])
        arrayList.append(["name":"아이즈원", "desc":"Produce48"])
        
    }
}
