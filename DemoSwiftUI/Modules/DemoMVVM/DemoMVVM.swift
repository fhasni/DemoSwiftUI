//
//  DemoMVVM.swift
//  DemoSwiftUI
//
//  Created by fhasni on 11/22/20.
//

import SwiftUI
import Combine

struct DemoMVVM: View {
    @ObservedObject var viewModel: DemoMVVMViewModel
    var body: some View {
        VStack {
            Spacer()
            Text(viewModel.message)
                .padding()
                .font(.largeTitle)
            Spacer()
            
            HStack {
                Spacer()
                Spacer()
                Button(action: {
                    viewModel.decrementCounter()
                }, label: {
                    Image(systemName: "minus")
                        .frame(width: 50, height: 50)
                        .padding()
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                })
                Spacer()
                
                Button(action: {
                    viewModel.incrementCounter()
                }, label: {
                    Image(systemName: "plus")
                        .frame(width: 50, height: 50)
                        .padding()
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                })
                
                Spacer()
                Spacer()
                
            }
            Spacer()
            
            Text("Count: \(viewModel.counter)")
                .padding()
            Spacer()
        }.navigationTitle("Demo MVVM")
    }
}

struct DemoMVVM_Previews: PreviewProvider {
    static var previews: some View {
        DemoMVVM(viewModel: DemoMVVMViewModel())
    }
}
