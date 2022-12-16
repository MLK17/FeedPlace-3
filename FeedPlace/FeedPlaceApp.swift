//
//  FeedPlaceApp.swift
//  FeedPlace
//
//  Created by Apprenant77 on 06/12/2022.
//

import SwiftUI

@main
struct FeedPlaceApp: App {
    
    @StateObject private var region = LocationsViewModel()

    var body: some Scene {
        WindowGroup {
            TEST()
                .environmentObject(region)
        }
    }
}
