//
//  LutView.swift
//  LutPicker
//
//  Created by Hugo Prinsloo on 2019/09/01.
//  Copyright © 2019 Hugo. All rights reserved.
//

import SwiftUI

struct LutView: View {
    let lut: Lut
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Button(action: {
                // Button action
            }) {Color(lut.color)}
            .frame(width: 80, height: 120)
            ZStack {
                Rectangle()
                    .frame(width: 80, height: 36)
                    .foregroundColor(.white)
                Text(lut.name)
                    .font(.headline)
                    .foregroundColor(.black)
            }
            
        }
        .cornerRadius(8)
        .shadow(radius: 8)
    }
}

#if DEBUG
struct LutView_Previews: PreviewProvider {
    static var previews: some View {
        LutView(lut: Lut(id: 0, name: "H1", color: .red))
    }
}
#endif
