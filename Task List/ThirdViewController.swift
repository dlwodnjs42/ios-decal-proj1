//
//  SecondViewController.swift
//  Task List
//
//  Created by Jaewon Lee on 10/16/16.
//  Copyright © 2016 Jaewon Lee. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    // exclamation mark = nothing intialized
    
    @IBOutlet var txtcompleted: UILabel!
    var counter = 0
    
    func updatecompletion() {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatecompletion()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

