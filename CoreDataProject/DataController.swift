//
//  DataController.swift
//  CoreDataProject
//
//  Created by Arthur Sh on 10.12.2022.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    var container = NSPersistentContainer(name: "SingerData")
    
    init(){
        container.loadPersistentStores{ description, error in
            if let error = error {
                print("Failed to load CoreData \(error.localizedDescription)")
                return
            }
        }
        
        self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
    }
}
