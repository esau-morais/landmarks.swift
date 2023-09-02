//
//  ContentView.swift
//  landmarks
//
//  Created by Esau Morais on 01/09/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    LandmarkList()
  }
}

#Preview {
  ContentView()
    .environmentObject(ModelData())
}
