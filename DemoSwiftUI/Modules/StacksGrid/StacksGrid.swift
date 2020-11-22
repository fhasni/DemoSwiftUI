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
                Image(systemName: "star.fill")
                Spacer()
                Image(systemName: "star.fill")
                Spacer()
                Image(systemName: "star.fill")
                Spacer()

            }
            Spacer()

            VStack {
                Spacer()
                Image(systemName: "star.fill")
                Spacer()
                Image(systemName: "star.fill")
                Spacer()
                Image(systemName: "star.fill")
                Spacer()

            }
            Spacer()

            VStack {
                Spacer()
                Image(systemName: "star.fill")
                Spacer()
                Image(systemName: "star.fill")
                Spacer()
                Image(systemName: "star.fill")
                Spacer()
            }
            Spacer()

        }.navigationTitle("Stacks Grid")
    }
}

struct StacksGrid_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StacksGrid()
        }
    }
}
