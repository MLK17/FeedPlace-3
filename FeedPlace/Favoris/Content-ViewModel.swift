//
//  Content-ViewModel.swift
//  enfin stp
//
//  Created by Sofiane Mulic on 07/12/2022.
//

import SwiftUI

//extension Favoris {
    final class ViewModel: ObservableObject{
        @Published var items = [tableau]()
        @Published var showingFavs = false
        @Published var savedItems: Set<Int> = [1,7]
        var filteredItems: [tableau]{
            if showingFavs{
                return items.filter {savedItems.contains($0.id)}
            }else{
                return items
            }
        }
        private var db = Database()
        
        init() {
           // self.savedItems = db.load()
            self.items = tableau.sampleItems
        }
        func sortFavs() {
            withAnimation {
                showingFavs.toggle()
            }
        }
        func contains(_ item: tableau) -> Bool{
            savedItems.contains(item.id)
        }
        
        func toggleFave(item: tableau) {
            if contains(item) {
                savedItems.remove(item.id)
            }else{
                savedItems.insert(item.id)
            }
            db.save(items: savedItems)
        }
    }
//}
