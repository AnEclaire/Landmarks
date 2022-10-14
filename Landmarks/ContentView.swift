//
//  ContentView.swift
//  Landmarks
//
//  Created by Emma Gutierrez on 10/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView() // Imported MapView Obj
                .ignoresSafeArea(edges: .top) // Extend to top of screen
                .frame(height: 300)
            
            CircleImage() // Imported CircleImage Obj
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) { // Stack containing text
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
            }
            .padding() // Ensure content in stack is spaced from edge.
            
            Divider()
            
            Text("About Turtle Rock")
                .font(.title2)
            Text("A natural rock formation in the shape of a turtle.")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Spacer() // Push all content in stack to top
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
