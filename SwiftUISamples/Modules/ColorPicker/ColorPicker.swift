//
//  ColorPicker.swift
//  SwiftUISamples
//
//  Created by fhasni on 11/21/20.
//

import SwiftUI

struct ColorPicker: View {
    @State private var red: Double = 0
    @State private var green: Double = 0
    @State private var blue: Double = 0
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
                .border(Color.primary, width: 1)
            
            SliderView(value: $red, label: "Red")
            SliderView(value: $green, label: "Green")
            SliderView(value: $blue, label: "Blue")

        }.padding()
    }
}

struct ColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker()
    }
}
