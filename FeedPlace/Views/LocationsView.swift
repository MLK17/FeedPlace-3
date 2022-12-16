//
//  LocationsView.swift
//  FeedPlace
//
//  Created by Apprenant77 on 07/12/2022.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @State var test = false
    @EnvironmentObject private var region: LocationsViewModel //objet interactif for user, ici c'est la map en dessous
    @StateObject private var UserModel = UserLocationModel()
    
    @State private var mapRegion: MKCoordinateRegion =  MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 47.85448477911294, longitude: 2.435865224992048), span: MKCoordinateSpan (latitudeDelta: 0.1, longitudeDelta: 0.1))
    // mapRegion variable avec coordonnées simplon maPregion,
    
    
    var body: some View {
        ZStack {
            mapLayer.edgesIgnoringSafeArea(.top)
//                .ignoresSafeArea()
            
            VStack(spacing: 0){
                header
                    .padding()
                Spacer ()
                locationsPreviewStacks
                
            }// fond de la page mapp
        }
        .sheet(item: $region.sheetLocations, onDismiss: nil) { location in DetailLocationView(location: location) // faire sortir une modale
           // -->DetailLocationView
//            UserModel.checkIfLocationServicesIsEnable()
        }
        .onAppear{
            UserModel.checkIfLocationServicesIsEnable()
        }
//        .sheet(isPresented: $test) {
//            DetailLocationView(location: <#T##Location#>)
//        }
    }
}
    
    struct LocationsView_Previews: PreviewProvider {
        static var previews: some View {
            LocationsView()
                .environmentObject(LocationsViewModel()) // redeclare l'environment object
        }
        
    }

final class UserLocationModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    var locationManager: CLLocationManager?
    func checkIfLocationServicesIsEnable() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager=CLLocationManager()
            locationManager!.delegate = self
        }else{
            print("")
        }
    }
    private func checkLocationAuthorization(){
        guard let locationManager = locationManager else { return }
        switch locationManager.authorizationStatus {

        case .notDetermined:
            locationManager.requestAlwaysAuthorization()
        case .restricted:
            print("Votre location est restreinte...")
        case .denied:
            print("")
        case .authorizedAlways, .authorizedWhenInUse:
            break

        @unknown default:
            break
        }
    }
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}
    
    extension LocationsView {
        private var header: some View {
            VStack(alignment: .center) {
                
                Button(action: region.toggleLocationList){ // bouton de la liste deroulant
                    
                    Text(region.mapLocation.name+", "+region.mapLocation.cityName)
                        .font(.headline)
                        //.fontWeight(.black)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.leading)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .animation(.none, value: region.mapLocation)
                        .overlay(alignment: .leading){
                            Image(systemName: "arrow.down")
                                .font(.headline)
                                .foregroundColor(.primary)
                                .padding()
                                .rotationEffect(Angle(degrees: region.ShowLocationsList ? 180: 0)) // fleche qui tourne sur 180 degré
                        }// champ deroulant avec les noms des organismes qui saffiche avecal fleche descendante montante.
                    
                }
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3),radius: 10, x:0, y:15)
                
                if region.ShowLocationsList {
                    LocationsListView()
                }
                
            }
            .padding(0.0)
        }
        private var mapLayer: some View {
            Map(coordinateRegion: $region.mapRegion, showsUserLocation: true,
                annotationItems: region.locations,
                annotationContent: { location in
                MapAnnotation(coordinate: location.coordinates) {
                    LocationsPinView()
                        .scaleEffect(region.mapLocation == location ? 1 : 0.7)
                        .shadow(radius: 10)
                        .onTapGesture {
                            test = true
                            region.showNextLocation(location: location)
                        }
                }
            })
        }
        
       
        private var locationsPreviewStacks: some View {
            ZStack {
                if test {
                    ForEach (region.locations){ location in
                        if region.mapLocation == location {
                            
                            LocationPreviewView (location: location)
                                .shadow(color: Color.black.opacity(0.3),radius: 20)
                                .padding()
                                .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))// champ avec les assos voir plus et suivant
                        }
                    }

                }

            }
            
        }
    }
    

