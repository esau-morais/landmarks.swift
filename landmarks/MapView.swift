//
//  MapView.swift
//  landmarks
//
//  Created by Esau Morais on 02/09/23.
//

import SwiftUI
import MapKit

struct MapView: View {
  @State private var region = MapCameraPosition.region(
    MKCoordinateRegion(
      center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
      span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    ))
  
  var body: some View {
    Map(position: $region)
  }
}

#Preview {
  MapView()
}
