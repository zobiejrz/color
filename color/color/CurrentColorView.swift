//
//  CurrentColorView.swift
//  color
//
//  Created by Ben Zobrist on 5/4/20.
//  Copyright © 2020 Ben Zobrist. All rights reserved.
//

import SwiftUI

struct CurrentColorView: View {
    @Binding var r : Double
    @Binding var g : Double
    @Binding var b : Double
    var body: some View {
        let rStr = String(format: "%.0f", self.r)
        let gStr = String(format: "%.0f", self.g)
        let bStr = String(format: "%.0f", self.b)
        let rHex = String(format:"%02X", Int(self.r))
        let gHex = String(format:"%02X", Int(self.g))
        let bHex = String(format:"%02X", Int(self.b))
        
        return VStack {
            
            RoundedRectangle(cornerRadius: CGFloat(20))
                .fill(Color(red: r / 255, green: g / 255, blue: b / 255))
                .frame(width:300, height: 300)
            HStack {
                Text("(\(rStr), \(gStr), \(bStr))")
                Text("0x\(rHex)\(gHex)\(bHex)")
            }
        }
    }
}

struct CurrentColorView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentColorView(r: .constant(50), g: .constant(100), b: .constant(200))
    }
}
