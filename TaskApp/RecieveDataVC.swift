//
//  RecieveDataVC.swift
//  TaskApp
//
//  Created by Have a Mission on 4/3/18.
//  Copyright © 2018 Have a Mission. All rights reserved.
//

import UIKit

class RecieveDataVC: UIViewController {
    @IBOutlet weak var laFirst: UILabel!
    @IBOutlet weak var laLast: UILabel!
    @IBOutlet weak var laAge: UILabel!
    @IBOutlet weak var laEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if  let usersArray = CoreDataHandler.getData(){
            for item in usersArray{
                laLast.text = item.lastName ?? ""
                laFirst.text = item.firstName ?? ""
                laAge.text = String(item.age)
                laEmail.text = item.email ?? ""
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
