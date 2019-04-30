//
//  HRViewController.swift
//  HR
//
//  Created by ktds 10 on 30/04/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//
import UIKit
import Foundation

class HRViewController : UIViewController, UITableViewDataSource, UICollectionViewDataSource {
    @IBOutlet weak var viewCollection:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "HRCollectionViewCell", bundle: nil)
        self.viewCollection.register(nib, forCellWithReuseIdentifier: "Cell")
    }
    
    let modelHR = HRModel()
    
    // MARK: - 여기서부터 테이블 뷰 데이터 소스 파트
    
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
    
    // MARK: - 여기서부터 컬렉션 뷰 데이터 소스 파트
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.modelHR.arrayList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let dicInfo = self.modelHR.arrayList[indexPath.row] as! [String:String]
        
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        //cell.backgroundColor = .red
        (cell.viewWithTag(1) as? UILabel)?.text = dicInfo["name"]
        (cell.viewWithTag(2) as? UILabel)?.text = dicInfo["desc"]
        
        return cell
    }
    
    
    
}
