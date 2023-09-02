//
//  ContentView.swift
//  landmarks
//
//  Created by Esau Morais on 01/09/23.
//

import SwiftUI

enum Tab {
  case featured
  case list
}

struct ContentView: View {
  @State private var selection: Tab = .featured
  
  var body: some View {
    TabView(selection: $selection) {
      CategoryHome()
        .tabItem {
          Label("Featured", systemImage: "star")
        }
        .tag(Tab.featured)
      
      LandmarkList()
        .tabItem {
          Label("List", systemImage: "list.bullet")
        }
        .tag(Tab.list)
    }
  }
}

#Preview {
  ContentView()
    .environmentObject(ModelData())
}
