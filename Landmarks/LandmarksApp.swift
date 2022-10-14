//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Emma Gutierrez on 10/13/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
