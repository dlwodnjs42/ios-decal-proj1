//
//  SecondViewController.swift
//  Task List
//
//  Created by Jaewon Lee on 10/16/16.
//  Copyright © 2016 Jaewon Lee. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    // exclamation mark = nothing intialized
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Events
    @IBAction func AddTask_Click(sender:UIButton) {
        print("hello1",txtTask.text!)
        print("hello2",txtDesc.text!)
        tskMnger.addTask(namet: txtTask.text!, desct: txtDesc.text!)
        self.view.endEditing(true)
        empty()
        self.tabBarController?.selectedIndex = 0
    }
    
    func empty() {
        txtTask.text = ""
        txtDesc.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true);
    }
    // UI textfield delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }

}

