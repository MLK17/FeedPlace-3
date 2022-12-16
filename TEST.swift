//
//  TEST.swift
//  FeedPlace
//
//  Created by Apprenant77 on 12/12/2022.
//

import SwiftUI

struct TEST: View {
    var body: some View {
        HStack{
            TabView{
                LocationsView()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Carte")
                    }
             
                Actualites()
                    .tabItem {
                        Image(systemName: "newspaper")
                        Text("Actualités")
                    }
                
                Favoris()
                    .tabItem{
                        Image(systemName: "star.fill")
                        Text("Favoris")
                    }
            }
        }.accentColor(Color("greenaccent"))
    }
}

struct TEST_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
