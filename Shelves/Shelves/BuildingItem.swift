//
//  BuildingItem.swift
//  Shelves
//
//  Created by Hugo Prinsloo on 2019/08/31.
//  Copyright © 2019 Hugo. All rights reserved.
//

import SwiftUI

struct BuildingItem: View {
    var building: Building
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(building.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(8)
                .shadow(radius: 8)
            VStack(alignment: .leading, spacing: 5.0) {
                Text(building.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                Text(building.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }
            }
    }
}

#if DEBUG
struct BuildingItem_Previews: PreviewProvider {
    static var previews: some View {
        BuildingItem(building: buildingData[0])
    }
}
#endif
