//
//  BuildingRow.swift
//  Shelves
//
//  Created by Hugo Prinsloo on 2019/08/31.
//  Copyright © 2019 Hugo. All rights reserved.
//

import SwiftUI

struct BuildingRow: View {
    var buildingType: BuildingType
    var buildings: [Building]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(buildingType.rawValue.uppercased())
                .font(.title)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(buildings, id: \.id) { building in
                        NavigationLink(destination: BuildingDetailView(building: building)) {
                            BuildingItem(building: building)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                    }
                }
            }
        }
    }
}

#if DEBUG
struct BuildingRow_Previews: PreviewProvider {
    static var previews: some View {
        BuildingRow(buildingType: .normal, buildings: buildingData.filter({ $0.type == .normal}))
    }
}
#endif
