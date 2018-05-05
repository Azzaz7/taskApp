//
//  CoreDataHandler.swift
//  TaskApp
//
//  Created by Have a Mission on 4/3/18.
//  Copyright © 2018 Have a Mission. All rights reserved.
//

import UIKit
import CoreData

class CoreDataHandler: NSObject
{
     // in this method to return the viewContext that is object from NSMAngeOblectContext to deal with data save , retrieve and so on
 fileprivate class   func getAppDelegateObj() -> NSManagedObjectContext{
        let appDelegateObject = UIApplication.shared.delegate as! AppDelegate // obj from Appdelegate to access persistentContainer method
        return appDelegateObject.persistentContainer.viewContext
    }
    class  func saveData(paremeters:[String:String],entityName:String) -> Bool
    {
        let context = getAppDelegateObj()
        let entity = NSEntityDescription.entity(forEntityName: entityName, in: context)
        let mangedObj = NSManagedObject(entity:entity! , insertInto: context)
        mangedObj.setValue(paremeters["firstName"], forKey:"firstName")
        mangedObj.setValue(Int(paremeters["Age"]!) , forKey:"age")
        mangedObj.setValue(paremeters["Email"], forKey:"email")
        mangedObj.setValue(paremeters["lastName"], forKey:"lastName")


        
        do {
        try context.save()
            return true
        }
        catch
        {
        print("Error")
            return false
    }
        // method to save data
    }
    
    class func getData() -> [User]?
    {
        let context = getAppDelegateObj()
        var arrayOfUsers :[User]?
        do{
       arrayOfUsers =  try context.fetch(User.fetchRequest())
            return arrayOfUsers
        }
        catch
        {
            return arrayOfUsers
        }
    }
    
// end of the class
}

