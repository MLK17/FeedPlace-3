//
//  test3.swift
//  enfin stp
//
// Created by Sofiane Mulic on 07/12/2022.
//

import SwiftUI

struct Favoris: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        NavigationView{
            ZStack {
                Color("beige").edgesIgnoringSafeArea(.top)
                VStack{
                    
    //                List {
                    ScrollView {
                        ForEach(vm.filteredItems) {item in
                                HStack {
                                    Image(item.image)
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(12)
                                    VStack(alignment: .leading) {
                                        
                                        Text(item.title)
                                            .foregroundColor(Color("greenaccent"))
                                            .font(Font.headline.weight(.bold))
                                        Text(item.description)
                                            .font(Font.headline.weight(.light))
                                            
                                        
                                        
                                    }
                                    Spacer()
                                    Image(systemName: vm.contains(item) ? "heart.fill" : "heart")
                                        .foregroundColor(.red)
                                        .onTapGesture {
                                            vm.toggleFave(item: item)
                                        }
                                }
                        };Button("montrer les favoris", action: vm.sortFavs)
                            
                        
                            
        //                }
                        .background(Color("beige"))
                    }
    //                .scrollContentBackground(.hidden)
                    Spacer()
                }
                .padding(25)
                .navigationTitle("Mes Favoris")
            }
            
                
        }
    }
    }

struct Favoris_Previews: PreviewProvider {
    static var previews: some View {
        Favoris()
    }
}

struct FavView : View{
    var body: some View{
        NavigationView {
            ZStack{
                (Color("vert"))
            }
            .navigationTitle("Mes favoris")
        }
    }
}

