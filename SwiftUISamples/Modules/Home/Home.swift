//
//  Home.swift
//  SwiftUISamples
//
//  Created by fhasni on 11/22/20.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: ScreenNavigations(),
                    label: {
                        Text("Screen navigations")
                    })
                
                NavigationLink(
                    destination: StacksGrid(),
                    label: {
                        Text("Stacks Grid (VStack & HStack)")
                    })
                
                NavigationLink(
                    destination: StatesExample(),
                    label: {
                        Text("States Example (@State)")
                    })
                
                NavigationLink(
                    destination: SlotsGame(),
                    label: {
                        Text("Slots Game (@State & @Binding)")
                    })
                
                NavigationLink(
                    destination: ColorPicker(),
                    label: {
                        Text("Color Picker (@State & @Binding)")
                    })
                
                NavigationLink(
                    destination: DemoMVVM(viewModel: DemoMVVMViewModel()),
                    label: {
                        Text("Demo MVVM (Combine Framework)")
                    })
            }.navigationTitle("SwiftUI Samples")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
