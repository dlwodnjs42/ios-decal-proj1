//
//  FirstViewController.swift
//  Task List
//
//  Created by Jaewon Lee on 10/16/16.
//  Copyright © 2016 Jaewon Lee. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tblTasks = UITableView()
    
    
    var taskscompleted = 0
    
    //how many rows it needs to render
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tskMnger.tasks.count
    }
    
    //return to view
    override func viewWillAppear(_ animated: Bool) {
        tblTasks.reloadData()
    }
    
    
    // going to run as many times as the first one is called
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "test")
        
        cell.textLabel!.text = tskMnger.tasks[indexPath.row].name
        cell.detailTextLabel!.text = tskMnger.tasks[indexPath.row].desc
        return cell
        
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellt = tableView.cellForRow(at: indexPath)
        
        if (cellt!.accessoryType != UITableViewCellAccessoryType.checkmark) {
            cellt!.accessoryType = UITableViewCellAccessoryType.checkmark
            taskscompleted = taskscompleted + 1
            
        } else if (cellt!.accessoryType == UITableViewCellAccessoryType.checkmark){
            cellt!.accessoryType = UITableViewCellAccessoryType.none
            taskscompleted = taskscompleted - 1
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            tskMnger.tasks.remove(at: indexPath.row)
            tblTasks.reloadData()
        }
    
    }

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

