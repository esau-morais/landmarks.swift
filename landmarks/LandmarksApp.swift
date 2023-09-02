//
//  landmarksApp.swift
//  landmarks
//
//  Created by Esau Morais on 01/09/23.
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
