//
//  FilteredListView.swift
//  CoreDataProject
//
//  Created by Arthur Sh on 11.12.2022.
//

import SwiftUI

struct FilteredListView: View {
    @FetchRequest var fetchRequest: FetchedResults<Singer>
    var body: some View {
        List(fetchRequest, id: \.self) {singer in
            Text("\(singer.unwrappedName) \(singer.unwrappedLastName)")
        }
    }
    
    init(filter: String) {
        _fetchRequest = FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH %@", filter))
    }
}


