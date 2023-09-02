//
//  LandmarkRowView.swift
//  landmarks
//
//  Created by Esau Morais on 02/09/23.
//

import SwiftUI

struct LandmarkRow: View {
  var landmark: Landmark
  
  var body: some View {
    HStack {
      landmark.image
        .resizable()
        .frame(width: 50, height: 50)
      Text(landmark.name)
      
      Spacer()
    }
  }
}

#Preview {
  Group {
    LandmarkRow(landmark:landmarks[0])
    LandmarkRow(landmark:landmarks[1])
      .previewLayout(.fixed(width: 300, height: 70))
  }
}
