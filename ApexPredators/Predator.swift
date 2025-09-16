//
//  Predator.swift
//  ApexPredators
//
//  Created by Mohab Khalid on 15/09/2025.
//

import SwiftUICore

struct Predator : Decodable, Identifiable {
    let id: Int
    let name: String
    let type: PredatorType
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScene]
    let link: String
    var image: String {
        name.lowercased().replacingOccurrences(of: " ", with: "")
    }
}


struct MovieScene : Decodable {
    let id: Int
    let movie: String
    let sceneDescription: String
}

enum PredatorType : String, Decodable, CaseIterable, Identifiable{
    case all
    case land
    case air
    case sea
    
    var id: PredatorType{
        self
    }
    
    var background: Color {
        switch self {
        case .all:
                .black
        case .land:
                .brown
        case .air:
                .teal
        case .sea:
                .blue
        }
    }
    
    var icon: String {
        switch self {
        case .all:
            "square.stack.3d.up.fill"
        case .land:
            "leaf"
        case .air:
            "wind"
        case .sea:
            "drop.fill"
        }
    }
}
