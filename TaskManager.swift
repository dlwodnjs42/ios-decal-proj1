//
//  TaskManager.swift
//  Task List
//
//  Created by Jaewon Lee on 10/16/16.
//  Copyright © 2016 Jaewon Lee. All rights reserved.
//

import UIKit

var tskMnger: TaskManager = TaskManager()

struct task{
    var name = "name"
    var desc = "desc"
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(namet: String, desct: String) {
        tasks.append(task(name: namet, desc: desct))
    }
    
}
