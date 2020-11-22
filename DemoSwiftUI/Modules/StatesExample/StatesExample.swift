//
//  StatesView.swift
//  DemoSwiftUI
//
//  Created by fhasni on 11/21/20.
//

import SwiftUI

struct StatesExample: View {
    @State private var isHearthed = false
    @State private var likesCount = 59
    
    var body: some View {
        Button(action: {
            isHearthed.toggle()
            if (isHearthed) {
                likesCount += 1
            } else {
                likesCount -= 1
            }
        }, label: {
            VStack {
                HStack {
                    if (isHearthed) {
                        Image(systemName: "heart.fill")
                        Text("Dislike")

                    } else {
                        Image(systemName: "heart")
                        Text("Like")
                    }
                }.font(.largeTitle)
                
                Text(("\(likesCount) likes"))
            }
        })
        .foregroundColor(.black)
    }
}

struct StatesExample_Previews: PreviewProvider {
    static var previews: some View {
        StatesExample()
    }
}
