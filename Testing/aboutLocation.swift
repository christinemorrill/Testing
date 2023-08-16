//
//  aboutLocation.swift
//  Testing
//
//  Created by Christine Pitino on 8/14/23.
//

import SwiftUI
import CoreLocation

struct aboutLocation: View {
    
    let place: Place

    
    var body: some View {
        ZStack{
            VStack {
                Text(place.name)
    
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            
            
            VStack{
                Text("Why should you visit?")
                    .font(.title)
                    .fontWeight(.bold)
                Text(place.appeal)
                    .font(.title)
                Spacer()
                    .frame(height: 25.0)
                Text("What do others think?")
                    .font(.title)
                    .fontWeight(.bold)
                Text(place.avgReview)
                
                
            }
            .padding()
        }
    }
}

struct aboutLocation_Previews: PreviewProvider {
    static var previews: some View {
        aboutLocation(place: Place(name: "", coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0), appeal: "", avgReview: ""))
    }
}
