//
//  HRViewController.swift
//  HR
//
//  Created by ktds 10 on 30/04/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//
import UIKit
import Foundation

class HRViewController : UIViewController, UITableViewDataSource {
    
    let modelHR = HRModel()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.modelHR.arrayList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let dicInfo = self.modelHR.arrayList[indexPath.row] as! [String:Any]
        
        var cell:UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .value1, reuseIdentifier: "Cell")
        }
        
        //let cell = UITableViewCell(style: .value1, reuseIdentifier: "Cell")
        
        
        
        cell.textLabel?.text = (dicInfo["name"] as! String)
        cell.detailTextLabel?.text = (dicInfo["desc"] as! String)
        
        return cell
    }
    
}
