//
//  Lut.swift
//  LutPicker
//
//  Created by Hugo Prinsloo on 2019/09/01.
//  Copyright © 2019 Hugo. All rights reserved.
//

import Foundation
import SwiftUI

struct Lut: Identifiable {
    let id: Int
    let name: String
    let color: UIColor
}

struct DummyLuts {
    static let items: [Lut] = [
        Lut(id: 0, name: "H1", color: #colorLiteral(red: 0.8941176534, green: 0.470588237, blue: 0.4549019635, alpha: 1)),
        Lut(id: 1, name: "H2", color: #colorLiteral(red: 0.8784313798, green: 0.3529411852, blue: 0.3333333433, alpha: 1)),
        Lut(id: 2, name: "H3", color: #colorLiteral(red: 0.8666666746, green: 0.2588235438, blue: 0.2156862766, alpha: 1)),
        Lut(id: 3, name: "H4", color: #colorLiteral(red: 0.8392156959, green: 0.1960784346, blue: 0.1450980455, alpha: 1)),
        Lut(id: 4, name: "H5", color: #colorLiteral(red: 0.721568644, green: 0.1647058874, blue: 0.1215686277, alpha: 1)),
        Lut(id: 5, name: "H6", color: #colorLiteral(red: 0.6000000238, green: 0.1333333403, blue: 0.09803921729, alpha: 1)),
        Lut(id: 6, name: "H7", color: #colorLiteral(red: 0.4784313738, green: 0.1019607857, blue: 0.07058823854, alpha: 1)),
        Lut(id: 7, name: "H8", color: #colorLiteral(red: 0.3568627536, green: 0.07450980693, blue: 0.05490196124, alpha: 1)),
    ]
}
