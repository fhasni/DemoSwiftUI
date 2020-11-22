//
//  DemoMVVMViewModel.swift
//  SwiftUISamples
//
//  Created by fhasni on 11/22/20.
//

import Combine

class DemoMVVMViewModel: ObservableObject {
    @Published var message = "Hello, World!!!"
    
    @Published var counter = 0
    
    func incrementCounter() {
        counter += 1
    }
    func decrementCounter() {
        counter -= 1
    }
}
