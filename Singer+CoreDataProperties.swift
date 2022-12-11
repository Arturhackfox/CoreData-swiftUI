//
//  Singer+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Arthur Sh on 11.12.2022.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var name: String?
    @NSManaged public var lastName: String?
    
    public var unwrappedName: String {
        name ?? "Unknown"
    }

    public var unwrappedLastName: String{
        lastName ?? "Unknown"
    }

}

extension Singer : Identifiable {

}
