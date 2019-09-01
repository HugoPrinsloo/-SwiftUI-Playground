//
//  LutPickerView.swift
//  LutPicker
//
//  Created by Hugo Prinsloo on 2019/09/01.
//  Copyright © 2019 Hugo. All rights reserved.
//

import SwiftUI

struct LutPickerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("sampleImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                ScrollableLutView(luts: DummyLuts.items)
            }
            .navigationBarTitle(Text("Luts"))
        }
    }
}

#if DEBUG
struct LutPickerView_Previews: PreviewProvider {
    static var previews: some View {
        LutPickerView()
    }
}
#endif
