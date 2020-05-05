//
//  ColorSliderView.swift
//  color
//
//  Created by Ben Zobrist on 5/4/20.
//  Copyright © 2020 Ben Zobrist. All rights reserved.
//

import SwiftUI
import Combine

struct ColorSliderView: View {
    @Binding var val : Double
    @Binding var color : Color

    var body: some View {
        VStack {
            Slider(value: self.$val, in: 0...255, step: 1)
                .accentColor(self.color)

        }
    }
}
