//
//  BuildingDetailView.swift
//  Shelves
//
//  Created by Hugo Prinsloo on 2019/08/31.
//  Copyright © 2019 Hugo. All rights reserved.
//

import SwiftUI

struct BuildingDetailView: View {
    let building: Building
    
    var body: some View {
        List {
            ZStack(alignment: .bottom) {
                Image(building.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .foregroundColor(.black)
                    .frame(height: 80)
                    .opacity(0.24)
                    .blur(radius: 8)
                HStack{
                    VStack(alignment: .leading, spacing: 8) {
                        Text(building.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        .bold()
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            .listRowInsets(EdgeInsets())
            VStack {
                Text(building.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(8)
                HStack {
                    Spacer()
                    BuyButton()
                    Spacer()
                }.padding(.top, 25)
            }
        }.edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct BuyButton: View {
    
    var body: some View {
        Button(action: {}) {
            Text("Buy Building")
            
        }.frame(width: 200, height: 50)
            .foregroundColor(.white)
            .font(.headline)
            .background(Color.blue)
        .cornerRadius(8)
    }
}

#if DEBUG
struct BuildingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BuildingDetailView(building: buildingData[0])
    }
}
#endif
