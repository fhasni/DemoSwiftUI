//
//  ScreenNavigations.swift
//  SwiftUISamples
//
//  Created by fhasni on 11/22/20.
//

import SwiftUI

struct ScreenNavigations: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.system(size:34, weight: .medium))
            Spacer()
            
            NavigationLink(
                destination: ScreenNavigationsChild(),
                label: {
                    Text("Navigate to child")
                })
            Spacer()

        }.navigationTitle("Parent")
    }
}

struct ScreenNavigations_Previews: PreviewProvider {
    static var previews: some View {
        ScreenNavigations()
    }
}
