//
//  Landmark.swift
//  landmarks
//
//  Created by Esau Morais on 02/09/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
  var id: Int
  var name: String
  var description: String
  var park: String
  var state: String
  var isFavourite: Bool
  var isFeatured: Bool
  
  private var imageName: String
  var image: Image {
    Image(imageName)
  }
  
  var category: Category
  enum Category: String, CaseIterable, Codable {
    case lakes = "Lakes"
    case rivers = "Rivers"
    case mountains = "Mountains"
  }
  
  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }
  
  private var coordinates: Coordinates
  var locationCoordinates: CLLocationCoordinate2D {
    CLLocationCoordinate2D(
      latitude: coordinates.latitude, longitude: coordinates.longitude
    )
  }
}

