//
//  LandmarkDetail.swift
//  landmarks
//
//  Created by Esau Morais on 02/09/23.
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
      MapView(coordinate: landmark.locationCoordinates)
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)
      
      
      CircleImage(image: landmark.image)
        .offset(y: -130)
        .padding(.bottom, -130)
      
      
      VStack(alignment: .leading) {
        HStack {
          Text(landmark.name)
            .font(.title)
          FavouriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavourite)
        }
        
        
        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }
        .font(.subheadline)
        .foregroundStyle(.secondary)
        
        Divider()
        
        Text("About \(landmark.name)")
          .font(.title2)
        Text(landmark.description)
      }
      .padding()
    }
    .navigationTitle(landmark.name)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static let modelData = ModelData()
  
  static var previews: some View {
    LandmarkDetail(landmark: modelData.landmarks[0])
      .environmentObject(modelData)
  }
}
