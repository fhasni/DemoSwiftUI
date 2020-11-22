//
//  SlotsGame.swift
//  SwiftUISamples
//
//  Created by fhasni on 11/21/20.
//

import SwiftUI

struct SlotsGame: View {
    @State private var symbols = ["apple", "star", "cherry"]

    @State private var numbers = [0, 1, 2]
    
    @State private var credit = 1000
    
    private var betAmount = 5
    
    
    var body: some View {
        ZStack {
            // Background
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 149/255, blue: 32/255, opacity: 1))
                .ignoresSafeArea()
            
            Rectangle()
                .foregroundColor(Color(red: 230/255, green: 179/255, blue: 62/255, opacity: 1))
                .rotationEffect(Angle(degrees: 45))
                .ignoresSafeArea()

            VStack {
                Spacer()

                //Title
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("SwiftUI Slots")
                        .foregroundColor(.white)
                        .bold()
                        
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                }
                .font(.title)
                
                Spacer()

                //Credit
                Text("Credit: \(credit)")
                    .padding(10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()

                //Cards
                HStack {
                    Spacer()
                
                    CardView(symbol: $symbols[numbers[0]])

                    CardView(symbol: $symbols[numbers[1]])

                    CardView(symbol: $symbols[numbers[2]])
 
                    Spacer()
                }
                
                Spacer()

                //Button
                Button(action: {
                    
                    numbers = numbers.map {_ in
                        Int.random(in: 0...symbols.count-1)
                    }
                    
                    if (numbers[0] == numbers[1] && numbers[0] == numbers[2]) {
                        credit += betAmount*10 //Won
                    } else {
                        credit -= betAmount //Lose
                    }
                    
                }, label: {
                    Text("Spin")
                        .foregroundColor(.white)
                        .padding([.leading, .trailing], 40)
                        .padding([.top, .bottom], 10)
                        .background(Color.pink)
                        .cornerRadius(20)
                })
                
                Spacer()

                
            }
            
            
            
        }
    }
}

struct SlotsGame_Previews: PreviewProvider {
    static var previews: some View {
        SlotsGame()
    }
}
