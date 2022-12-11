//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Arthur Sh on 10.12.2022.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
