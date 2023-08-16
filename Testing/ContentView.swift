//
//  ContentView.swift
//  Testing
//
//  Created by Christine Pitino on 8/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showImage = false
   
    var body: some View {
        NavigationStack {
            ZStack{
                VStack {
                    Text("Top of screen")
                    Spacer()
                }
                .padding()
                
                VStack{
                    Spacer()
                        .frame(height: 50.0)
                    Text("This can be anywhere")
                        .font(.custom("Poppins-Thin", size: 18))
                    Spacer()
                        .frame(width: 100.0, height: 100.0)
                    Text("Example")
                    Spacer()
                        .frame(height: 20.0)
                    Text("Example1")
                    
                    Button( action:
                                {showImage.toggle()})
                    {
                        Text("Click to reveal an image")
                    }
                    
                    if showImage {
                        Image("cats")
                        //
                    }
                }
                .toolbar { ToolbarItemGroup(placement: .status)
                    {
                        NavigationLink(destination: map()) {
                            Text("to map")
                        }
                    }
                }
            }
        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
