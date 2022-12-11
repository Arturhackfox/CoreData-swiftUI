//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Arthur Sh on 10.12.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    @State private var lastNameFiltered = "S"
   
    
    var body: some View {
        VStack {
          FilteredListView(filter: lastNameFiltered)
            
            
            
        }
        .padding()
        Button("Add singer") {
            
            let taylor = Singer(context: moc)
            taylor.name = "Taylor"
            taylor.lastName = "Swift"
            
            let pitter = Singer(context: moc)
            pitter.name = "Pitter"
            pitter.lastName = "Parker"
            
            let Sava = Singer(context: moc)
            Sava.name = "Alexandr"
            Sava.lastName = "Sava"
            
            try? moc.save()
        }
        
        Button("Filter P") {
            lastNameFiltered = "P"
        }
        
        Button("Filter S"){
            lastNameFiltered = "S"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
