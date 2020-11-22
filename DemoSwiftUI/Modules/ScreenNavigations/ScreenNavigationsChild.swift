//
//  ScreenNavigationsChild.swift
//  DemoSwiftUI
//
//  Created by fhasni on 11/22/20.
//

import SwiftUI

struct ScreenNavigationsChild: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10, content: {
                
                ForEach((1...20), id: \.self) {
                    Text("\($0). Hello, World!")
                }.padding()
                
                
            })
            
        }
        .navigationTitle("Child")
    }
}

struct ScreenNavigationsChild_Previews: PreviewProvider {
    static var previews: some View {
        ScreenNavigationsChild()
    }
}
