//
//  ViewController.swift
//  TaskApp
//
//  Created by Have a Mission on 4/2/18.
//  Copyright © 2018 Have a Mission. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtFirst: UITextField!
    @IBOutlet weak var txtLast: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtEmail: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func BtnDone (_ sender : Any)
    {
        let paremters = [
        "firstName":txtFirst.text ?? "" ,
        "lastName":txtLast.text ?? "" ,
        "Age":txtAge.text ?? "" ,
        "Email":txtEmail.text ?? ""
        ]
       print( CoreDataHandler.saveData(paremeters: paremters,entityName: "User"))
        // to goto the second vc
    let secondVC = storyboard?.instantiateViewController(withIdentifier: "TasksVC") as! TasksVC
        navigationController?.pushViewController(secondVC, animated: true)
    }

    
}

