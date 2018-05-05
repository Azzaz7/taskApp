//
//  TasksVC.swift
//  TaskApp
//
//  Created by Have a Mission on 4/2/18.
//  Copyright © 2018 Have a Mission. All rights reserved.
//
import UIKit

class TasksVC: UIViewController {
    @IBOutlet weak var laName: UITextField!
    @IBOutlet weak var textTaskDescription: UITextView!
    @IBOutlet weak var btnSave: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        btnSave.layer.cornerRadius = 10
        btnSave.layer.borderWidth = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveTask(_ sender: UIButton) {
    }
}
