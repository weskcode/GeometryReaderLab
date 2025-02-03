//
//  Profile.swift
//  GeometryReaderLab
//
//  Created by Wesley Keetch on 1/30/25.
//

import SwiftUI

struct Profile: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
}

let profiles = [
    Profile(name: "Wesley Keetch", description: "iOS Developer", imageName: "person.crop.circle"),
    Profile(name: "Jane Madsen", description: "MTECH Program Lead", imageName: "person.crop.circle.fill"),
    Profile(name: "Ryan Plitt", description: "Computer Guy", imageName: "person.crop.square"),
    Profile(name: "Dylan Louder", description: "Sales Bro", imageName: "person.crop.rectangle"),
    Profile(name: "Kevin whateverhislastnameis", description: "Student", imageName: "person.crop.artframe"),
    Profile(name: "Parker Rushton", description: "Instructor", imageName: "person.crop.circle.badge.checkmark")
]
