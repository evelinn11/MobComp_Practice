//
//  Genre.swift
//  W05_Practice
//
//  Created by student on 09/10/25.
//

import Foundation

struct Genre: Identifiable, Codable, Hashable {
    let id = UUID()
    var name: String
    var colorHex: String
    
    static let all: [Genre] = [
        .init(name: "Action", colorHex: "#E80E2F"),
        .init(name: "Romance", colorHex: "#AFAFAF")
    ]
}
