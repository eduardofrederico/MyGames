//
//  ViewController+CoreData.swift
//  MyGames
//
//  Created by Eduardo Frederico on 01/08/24.
//

import Foundation
import UIKit
import CoreData

extension UIViewController {
    
    var context: NSManagedObjectContext {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
        
    }
}
