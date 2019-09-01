//
//  ScrollableLutView.swift
//  LutPicker
//
//  Created by Hugo Prinsloo on 2019/09/01.
//  Copyright © 2019 Hugo. All rights reserved.
//

import SwiftUI

struct ScrollableLutView: View {
    var luts: [Lut]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(luts) { lut in
                    LutView(lut: lut)
                }
            }
        .padding()
        }
    }
}

#if DEBUG
struct ScrollableLutView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollableLutView(luts: DummyLuts.items)
    }
}
#endif
