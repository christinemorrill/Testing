//
//  map.swift
//  Testing
//
//  Created by Christine Pitino on 8/11/23.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
       let id = UUID()
       let name: String
       let coordinate: CLLocationCoordinate2D
       let appeal: String
       let avgReview: String
   }

struct map: View {
    

    @State private var region = MKCoordinateRegion(
        center:                      CLLocationCoordinate2D(latitude: 42.3601, longitude: -71.0589),
        span: MKCoordinateSpan(
            latitudeDelta: 0.03,
            longitudeDelta: 0.03)
    )
    
    
    var places = [
        Place(name: "Paul Revere House", coordinate: CLLocationCoordinate2D(latitude: 42.3637, longitude: -71.0537), appeal: "The Paul Revere house is a historic site from the American Revolution. Vistors can enjoy a brief tour of the home while learning some of the history.", avgReview: "⭐️⭐️⭐️⭐️"),
        Place(name: "Harvard University", coordinate: CLLocationCoordinate2D(latitude: 42.3744, longitude: -71.1182), appeal: "Harvard University is a well-known Ivy League school with many famous alumni, including Barack Obama, Conan O'Brien, and Ruth Bader Ginsberg", avgReview: "⭐️⭐️⭐️⭐️⭐️")
]
    
    var body: some View {
        
        NavigationStack{
        
        VStack{
            
            
            Map(coordinateRegion: $region, annotationItems: places) {
            
                place in
                MapAnnotation(coordinate: place.coordinate) {
   
                    NavigationLink{
                        aboutLocation(place: place)
                    } label: {
                        PlaceAnnotation(title: place.name)
                        }
                    }
                        
            }
            
            }
        .edgesIgnoringSafeArea(.all)
            
            }
        
    }

}
        
struct map_Previews: PreviewProvider {
    static var previews: some View {
        map()
    }
}
