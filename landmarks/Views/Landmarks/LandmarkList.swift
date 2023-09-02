//
//  LandmarkList.swift
//  landmarks
//
//  Created by Esau Morais on 02/09/23.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showFavouritesOnly = false
  
  var filteredLandmarks: [Landmark] {
    modelData.landmarks.filter({
      landmark in (!showFavouritesOnly || landmark.isFavourite)
    })
  }
  
  var body: some View {
    NavigationView {
      List {
        Toggle(isOn: $showFavouritesOnly) {
          Text("Favourites only")
        }
        ForEach(filteredLandmarks) {
          landmark in
          NavigationLink {
            LandmarkDetail(landmark: landmark)
          } label: {
            LandmarkRow(landmark: landmark)
          }
        }
      }
      .navigationTitle("Landmarks")
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
      LandmarkList()
        .environmentObject(ModelData())
        .previewDevice(PreviewDevice(rawValue: deviceName))
        .previewDisplayName(deviceName)
    }
  }
}
