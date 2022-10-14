//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Emma Gutierrez on 10/14/22.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate) // Imported MapView Obj
                .ignoresSafeArea(edges: .top) // Extend to top of screen
                .frame(height: 300)
            
            CircleImage(image: landmark.image) // Imported CircleImage Obj
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) { // Stack containing text
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding() // Ensure content in stack is spaced from edge.
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
