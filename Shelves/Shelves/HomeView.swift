//
//  ContentView.swift
//  Shelves
//
//  Created by Hugo Prinsloo on 2019/08/31.
//  Copyright © 2019 Hugo. All rights reserved.
//

import SwiftUI

struct HomeView: View {
        
    var body: some View {
        NavigationView {
            List {
                BuildingRow(buildingType: .popular, buildings: buildingData.filter({$0.type == .popular}))
                BuildingRow(buildingType: .normal, buildings: buildingData.filter({$0.type == .normal}))
                    .padding(.top)
                    .padding(.bottom)
                
            }
            .navigationBarTitle(Text("Buildings"))
        }

    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
