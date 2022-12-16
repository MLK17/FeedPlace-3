//
//  Location.swift
//  FeedPlace
//
//  Created by Apprenant77 on 07/12/2022.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
   
    
    let name: String
    let cityName: String
    let Adresse: String
    let coordinates: CLLocationCoordinate2D
    let descriptiuon: String
    let eMail: String
    let phoneNumber: String
    let Horaires: String
    let imageNames : [String]
    let link: String
    var test = false
    var id: String {
        name + cityName
    }
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}


