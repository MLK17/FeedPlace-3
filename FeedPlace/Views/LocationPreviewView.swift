//
//  LocationPreviewView.swift
//  FeedPlace
//
//  Created by Apprenant77 on 09/12/2022.
//

import SwiftUI

struct LocationPreviewView: View { // boucle la vignetet avec limage, voir plusn suivnat le nom et sous titre.
    
    @EnvironmentObject private var region: LocationsViewModel // @ environnement object mettre une image flottante sur la premiere page variable region.
    let location: Location
    var body: some View {
        HStack(alignment: .bottom, spacing:4) {
            VStack (alignment:.leading, spacing: 16) {
                imageSection
                titlesection
            }
            VStack(spacing: 8) {
                learnMoreButton
                NextButton
            }
            }
        .padding(15)
        .background(RoundedRectangle(cornerRadius: 10).fill(.ultraThinMaterial)
        .offset(y:65)
                    )
        .cornerRadius(10)
        }
    }
    
    struct LocationPreviewView_Previews: PreviewProvider {
        static var previews: some View {
            ZStack{
                Color.yellow.ignoresSafeArea()
                
                LocationPreviewView(location: LocationsDataService.locations.first!)
                    .padding()
            }
            .environmentObject(LocationsViewModel())
        }
    }
    
    
    extension LocationPreviewView { // image du label en vignette
        private var imageSection: some View {
            ZStack {
                if let imageName = location.imageNames.first {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                }
            }
            .padding(8)
            .background(Color.white)
            .cornerRadius(10)
            
            
        }
        private var titlesection: some View {
            VStack(alignment: .leading, spacing: 4) {
                Text(location.name) // TItre de l'assos en gras
                    .font(.system(size:15))
                    .fontWeight(.bold)
                Text(location.cityName) // SOUS titre de la ville
                    .foregroundColor(.gray)
            }

        }
       
        private var learnMoreButton: some View{ // mise en forme Bouton VOIR PLUS -->  en boucle
            Button {
                region.sheetLocations = location
            } label: {
                Text("Voir plus")
                    .font(.headline)
                    .frame(width: 100, height: 25)
            }
            .buttonStyle(.borderedProminent)
        }
        
        private var NextButton: some View { // bouton SUIVANT --> qui tourne en boucle
            
            Button {
                region.nextButtonPressed()
            }label: {
                Text("Suivant")
                    .font(.headline)
                    .frame(width:100, height: 25)
            }
            .buttonStyle(.bordered)
        }
    }

