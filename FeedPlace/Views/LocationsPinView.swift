//
//  LocationsPinView.swift
//  FeedPlace
//
//  Created by Apprenant77 on 09/12/2022.
//

import SwiftUI

struct LocationsPinView: View {
    let accentColor = Color ("greenaccent")
    
    var body: some View {
        VStack(spacing:0) {
            Image(systemName: "circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .font(.headline)
                .foregroundColor(.white)
                .padding(6)
                .background(accentColor)
                .cornerRadius(36)
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(accentColor)
                .frame(width: 10, height: 10)
                .rotationEffect(Angle(degrees: 180))
                .offset(y:-3)
                .padding(.bottom, 40)
                
        }
    }
}
    
    struct LocationsPinView_Previews: PreviewProvider {
        static var previews: some View {
            ZStack {
                Color.black.ignoresSafeArea()
                LocationsPinView()
            }
        }
    }

