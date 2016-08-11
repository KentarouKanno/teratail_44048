//
//  ViewController1.swift
//  teratail_44048
//
//  Created by KentarOu on 2016/08/12.
//  Copyright © 2016年 KentarOu. All rights reserved.
//

import UIKit

class ViewController1: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 20
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.registerNib(UINib(nibName: "CustomCell1", bundle: nil), forCellReuseIdentifier: "CustomCell1")
    }
    
    // Data Array
    var dataArray = WeatherData.createData()
    
    // MARK: - TableView Delegate & DataSource
    
    // Row Count
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    // Generate Cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell1", forIndexPath: indexPath) as! CustomCell1
        cell.data = dataArray[indexPath.row]
        return cell
    }
    
    // Select Cell
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        print("Cell Tap - ",indexPath.row)
    }
}