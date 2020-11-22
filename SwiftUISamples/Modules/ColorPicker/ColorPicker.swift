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
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
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
