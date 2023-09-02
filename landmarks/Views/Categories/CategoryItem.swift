//
//  CategoryItem.swift
//  landmarks
//
//  Created by Esau Morais on 02/09/23.
//

import SwiftUI

struct CategoryItem: View {
  var landmark: Landmark
  
  var body: some View {
    VStack(alignment: .leading) {
      landmark.image
        .renderingMode(.original)
        .resizable()
        .frame(width: 155, height: 155)
        .cornerRadius(5)
      
      Text(landmark.name)
        .font(.caption)
        .foregroundStyle(.primary)
    }
    .padding(.leading, 15)
  }
}

#Preview {
  CategoryItem(landmark: ModelData().landmarks[0])
}
