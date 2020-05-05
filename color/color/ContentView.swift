//
//  ContentView.swift
//  color
//
//  Created by Ben Zobrist on 5/4/20.
//  Copyright © 2020 Ben Zobrist. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var r : Double = 128
    @State var b : Double = 128
    @State var g : Double = 128

    var body: some View {
        ScrollView {
            VStack {
                CurrentColorView(r: $r, g: $g, b: $b)
                ColorSliderView(val: $r, color: .constant(.red))
                ColorSliderView(val: $g, color: .constant(.green))
                ColorSliderView(val: $b, color: .constant(.blue))
            }
        }
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
