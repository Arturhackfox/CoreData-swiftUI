//
//  FilteredListView.swift
//  CoreDataProject
//
//  Created by Arthur Sh on 11.12.2022.
//

import SwiftUI
import CoreData

struct FilteredListView<T: NSManagedObject, Content: View>: View {
    
    // enum to control predicates
    enum Predicates: String {
        case beginsWith = "BEGINSWITH"
        case contains = "CONTAINS[c]"
    }
    
    @FetchRequest var fetchRequest: FetchedResults<T>
    
    let content: (T) -> Content
    
    var body: some View {
        List(fetchRequest, id: \.self) {singer in
            self.content(singer)
        }
    }
    
    
    init(filterKey: String, filterValue: String, WHATPREDICATE: Predicates = .contains, @ViewBuilder content: @escaping (T) -> Content ) {
        _fetchRequest = FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "%K \(WHATPREDICATE) %@",filterKey, filterValue))
        self.content = content
    }
}


