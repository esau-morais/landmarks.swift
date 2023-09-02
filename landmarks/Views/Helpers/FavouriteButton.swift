//
//  FavouriteButton.swift
//  landmarks
//
//  Created by Esau Morais on 02/09/23.
//

import SwiftUI

struct FavouriteButton: View {
  @Binding var isSet: Bool
  
  var body: some View {
    Button {
      isSet.toggle()
    } label: {
      Label("Toggle Favourite", systemImage: isSet ? "star.fill" : "star")
        .labelStyle(.iconOnly)
        .foregroundStyle(isSet ? .yellow : .gray)
    }
  }
}

#Preview {
  FavouriteButton(isSet: .constant(true))
}
