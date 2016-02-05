//
//  FirstViewController.swift
//  Demo
//
//  Created by FUJIKI TAKESHI on 2016/02/04.
//  Copyright © 2016年 takecian. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.registerClass(UITableViewCell.self)
        tableView.registerNib(CustomTableViewCell.self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(UITableViewCell.self)
            
            cell.textLabel?.text = UITableViewCell.defaultReuseIdentifier
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(CustomTableViewCell.self)
            
            cell.textLabel?.text = CustomTableViewCell.defaultReuseIdentifier
            
            return cell
        }
    }

}

