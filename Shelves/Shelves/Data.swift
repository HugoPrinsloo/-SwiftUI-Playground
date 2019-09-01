//
//  Data.swift
//  Shelves
//
//  Created by Hugo Prinsloo on 2019/08/31.
//  Copyright © 2019 Hugo. All rights reserved.
//

import Foundation
import SwiftUI

enum BuildingType: String, CaseIterable, Codable, Hashable {
    case popular = "popular"
    case normal = "new"
}

struct Building: Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let imageName: String
    let description: String
    let type: BuildingType
    
}

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't find \(filename) in main bundle: \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

let buildingData: [Building] = load("buildings.json")
