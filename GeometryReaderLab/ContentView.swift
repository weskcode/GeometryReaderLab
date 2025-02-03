//
//  ContentView.swift
//  GeometryReaderLab
//
//  Created by Wesley Keetch on 1/30/25.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ProfileGridView(profiles: profiles)
      .padding()
  }
}

#Preview {
  ContentView()
}
