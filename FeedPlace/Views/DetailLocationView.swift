//
//  DetailLocationView.swift
//  FeedPlace
//
//  Created by Apprenant77 on 10/12/2022.
//

import SwiftUI

struct DetailLocationView: View {
    let location:Location
    @EnvironmentObject private var region: LocationsViewModel
    @State private var test = false
    
    var body: some View {
        
        ScrollView {
            
            
            VStack {
                
                imageSeection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x:0, y:10)
                VStack(alignment: .leading, spacing: 12) {
                    
                    titleSection
                    Divider ()
                    AdresseSection
                    Divider()
                    PhoneSection
                    Divider ()
                    eMailSection
                    Divider()
                    HoraireSection
                    }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                
                    }
            
                }
        .ignoresSafeArea()
        .background(Color("beigeaccent"))
        .overlay(backButton, alignment: .topLeading)
       
    }
}


struct DetailLocationView_Previews: PreviewProvider {
    static var previews: some View {
        DetailLocationView(location: LocationsDataService.locations.first!)
    }
}

extension DetailLocationView { // créer d'autre variable en dehors de ma structure
    
    
    private var imageSeection: some View {
        TabView {
            ForEach (location.imageNames, id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
            }
        }
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            HStack {
                    Text(location.descriptiuon)
                                .foregroundColor(.secondary)
                    Button {
                                test.toggle()
                            } label: {
                    Image(systemName: test ? "heart.fill": "heart")
                                    .foregroundColor(.red)
                                    .font(.system(size:26))
                                    .padding(.horizontal, 30)
                            } // bouton coeur like
                        } // fin HSTACK
        }
    }
    private var eMailSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "globe")
                Text(location.eMail)
                    .font(.subheadline)
                .foregroundColor(.secondary)}
            
            if let url = URL (string: location.link) {
                Link("Voir site internet", destination: url)
                    .font(.headline)
                    .tint(.blue)
                    .padding(.horizontal, 115)
            }
        }
    }
    
    private var HoraireSection: some View {
        VStack(alignment: .leading, spacing: 8) {
      
        
            HStack {
                Spacer ()
                Image(systemName:"timer")
                Text ("Horaires")
                Spacer ()
                    //.padding(.horizontal, 50)
            }
            HStack {
                Text(location.Horaires)
                            .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 60)
            }
            
        }
    }
    
        private var PhoneSection: some View {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(systemName:"phone.fill")
                    Text(location.phoneNumber)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
        
    private var AdresseSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack{
                
                Image(systemName:"house.fill")
                Text(location.Adresse)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        
    }
    
    private var backButton: some View {
        Button {
            
            region.sheetLocations = nil
        } label: {
            Image(systemName: "xmark")
            
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
}

