//
//  LocationsViewModels.swift
//  FeedPlace
//
//  Created by Apprenant77 on 07/12/2022.
//
// cette page fait tourner notre UI,
import Foundation //
import MapKit//
import SwiftUI //

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location] // creer un editeur,
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
            
        }
    }
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    @Published var ShowLocationsList: Bool = false
    
    @Published var sheetLocations: Location? = nil
    
    init () {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    private func updateMapRegion(location: Location){ // 
        withAnimation(.easeInOut){ // update la nouvelle location
            mapRegion = MKCoordinateRegion(center: location.coordinates, span: mapSpan)
        }
    }
  func toggleLocationList() {
        withAnimation(.easeInOut) { // update la nouvelle location
            ShowLocationsList = !ShowLocationsList
        }
    }
    func showNextLocation(location: Location){
        withAnimation(.easeInOut){ // update la nouvelle location
            mapLocation = location
            ShowLocationsList = false
        }
    }
    func nextButtonPressed() { //
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation}) else { // alternativa a if let, le bouton suivant sactive a chaque location. Fait une loop avec les differentes les locations tourne en boucle avec un unwrap
            print("Impossible de trouver l'index actuel dans le tableau des emplacements.")
            return
        }
            let nextIndex = currentIndex + 1
            guard locations.indices.contains(nextIndex)else {
                guard let firstLocation = locations.first else {return}
            showNextLocation(location: firstLocation)
            return
        }
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
        
    }
}
