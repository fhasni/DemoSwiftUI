//
//  CardView.swift
//  SwiftUISamples
//
//  Created by fhasni on 11/21/20.
//

import SwiftUI

struct CardView: View {
    @Binding var symbol: String
    
    var body: some View {
        Image(symbol)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(10)
            .background(Color.white.opacity(0.5))
            .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbol: Binding.constant("apple"))
            .previewLayout(.sizeThatFits)
    }
}
