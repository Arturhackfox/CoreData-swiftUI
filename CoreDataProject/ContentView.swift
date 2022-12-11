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
    @State private var nameFiltered = "T"
   
    
    var body: some View {
        VStack {
            FilteredListView(filterKey: "name", filterValue: nameFiltered) {
            (singer: Singer) in
                Text("\(singer.unwrappedName) \(singer.unwrappedLastName)")
            }
            
            
            
        }
        .padding()
        Button("Add singer") {
            
            let taylor = Singer(context: moc)
            taylor.name = "Taylor"
            taylor.lastName = "Swift"
            
            let pitter = Singer(context: moc)
            pitter.name = "Aitter"
            pitter.lastName = "Parker"
            
            let Sava = Singer(context: moc)
            Sava.name = "Alexandr"
            Sava.lastName = "Sava"
            
            try? moc.save()
        }
        
        Button("Filter T") {
            nameFiltered = "T"
        }
        
        Button("Filter A"){
            nameFiltered = "A"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
