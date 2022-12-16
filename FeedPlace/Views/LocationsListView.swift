//
//  LocationsListView.swift
//  FeedPlace
//
//  Created by Apprenant77 on 07/12/2022.
//

import SwiftUI

struct LocationsListView: View {
    @EnvironmentObject private var region: LocationsViewModel
    var body: some View {
        List {
            ForEach(region.locations) { location in
                Button{
                    region.showNextLocation(location: location)
                } label: {
                listRowView(location: location)
                        .padding(.vertical, 4)
                        .listRowBackground(Color.clear)
                }
              }
            }
        .listStyle(PlainListStyle())
        }
    }


struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
            .environmentObject(LocationsViewModel())
    }
}
extension LocationsListView {
    private func listRowView(location: Location) -> some View{
        
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
            }
            VStack(alignment: .leading){
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth:.infinity, alignment: .leading)
        }
        
    }
}
