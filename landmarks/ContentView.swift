//
//  ContentView.swift
//  landmarks
//
//  Created by Esau Morais on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(alignment: .leading) {
        MapView()
          .ignoresSafeArea(edges: .top)
          .frame(height: 300)
        
        CircleImage()
          .offset(y: -130)
          .padding(.bottom, -130)
        
        Text("Hello, Esau!")
          .font(.title)
          .foregroundColor(Color.green)
        
        
        HStack {
          Text("Joshua Tree National Park")
          Spacer()
          Text("California")
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
        
        Divider()
        
        Text("About Turtle Rock")
          .font(.title2)
        Text("Descriptive text goes here.")
      }
      .padding()
      
      Spacer()
    }
}

#Preview {
    ContentView()
}
