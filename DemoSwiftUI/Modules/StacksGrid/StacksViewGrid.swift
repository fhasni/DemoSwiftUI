//
//  StacksView.swift
//  DemoSwiftUI
//
//  Created by fhasni on 11/21/20.
//

import SwiftUI

struct StacksGrid: View {
    var body: some View {
        HStack {
            Spacer()

            VStack {
                Spacer()
                Image(systemName: "cart")
                Spacer()
                Image(systemName: "cart")
                Spacer()
                Image(systemName: "cart")
                Spacer()

            }
            Spacer()

            VStack {
                Spacer()
                Image(systemName: "cart")
                Spacer()
                Image(systemName: "cart")
                Spacer()
                Image(systemName: "cart")
                Spacer()

            }
            Spacer()

            VStack {
                Spacer()
                Image(systemName: "cart")
                Spacer()
                Image(systemName: "cart")
                Spacer()
                Image(systemName: "cart")
                Spacer()
            }
            Spacer()

        }.navigationTitle("Stacks Grid")
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StacksGrid()
        }
    }
}
