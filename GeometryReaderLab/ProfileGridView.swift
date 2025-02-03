//
//  ProfileGridView.swift
//  GeometryReaderLab
//
//  Created by Wesley Keetch on 1/30/25.
//

import SwiftUI

struct ProfileGridView: View {
  let profiles: [Profile]
  
  @Environment(\.horizontalSizeClass) var horizontalSizeClass
  
  var body: some View {
    GeometryReader { geometry in
      ScrollView {
        let columnCount = horizontalSizeClass == .compact ? 2 : 3
        let columnWidth = geometry.size.width / CGFloat(columnCount)
        
        LazyVStack {
          ForEach(0..<(profiles.count / columnCount + (profiles.count % columnCount == 0 ? 0 : 1)), id: \.self) { rowIndex in
            HStack {
              ForEach(0..<columnCount, id: \.self) { columnIndex in
                let index = rowIndex * columnCount + columnIndex
                if index < profiles.count {
                  ProfileCardView(profile: profiles[index])
                    .frame(width: columnWidth)
                } else {
                  Spacer()
                }
              }
            }
          }
        }
      }
    }
  }
}
