//
//  ProfileCardView.swift
//  GeometryReaderLab
//
//  Created by Wesley Keetch on 1/30/25.
//

import SwiftUI

struct ProfileCardView: View {
  let profile: Profile
  private let backgroundColor: Color

  init(profile: Profile) {
    self.profile = profile
    self.backgroundColor = ProfileCardView.randomColor()
  }

  var body: some View {
    VStack {
      Image(systemName: profile.imageName)
        .resizable()
        .scaledToFit()
        .frame(width: 50, height: 50)
        .padding()

      Text(profile.name)
        .font(.headline)

      Text(profile.description)
        .font(.subheadline)
        .foregroundColor(.gray)
    }
    .padding()
    .background(backgroundColor)
    .cornerRadius(10)
    .shadow(radius: 5)
  }

  static func randomColor() -> Color {
    let colors: [Color] = [.red, .blue, .green, .yellow, .purple, .orange, .pink]
    return colors.randomElement() ?? .gray
  }
}

#Preview {
  let sampleProfile = Profile(
    name: "Wesley Keetch",
    description: "iOS Developer",
    imageName: "person.crop.circle"
  )
  ProfileCardView(profile: sampleProfile)
}
