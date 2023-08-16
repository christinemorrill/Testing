//
//  PlaceAnnotation.swift
//  Testing
//
//  Created by Christine Pitino on 8/15/23.
//

import SwiftUI

struct PlaceAnnotation: View {
    
    @State private var showTitle = false
    
    let title: String
    
    var body: some View {
        VStack(spacing: 0) {
            Text(title)
                   .font(.callout)
                   .padding(5)
                   .background(Color(.white))
                   .cornerRadius(10)
            
              Image(systemName: "mappin.circle.fill")
//                .font(.title)
                .foregroundColor(.red)

              Image(systemName: "arrowtriangle.down.fill")
                .font(.caption)
                .foregroundColor(.red)
                .offset(x: 0, y: -5)
            }
        .onTapGesture {
            withAnimation(.easeInOut) {
                showTitle.toggle()
                }
            }
          }
        }
struct PlaceAnnotation_Previews: PreviewProvider {
    static var previews: some View {
        PlaceAnnotation(title: "")
    }
}
