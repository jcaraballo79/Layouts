//
//  ContentView.swift
//  Layouts
//
//  Created by Jorge Caraballo on 8/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the genius bar needs help, they call you!"
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.blue)
                .padding()
            
            HStack {
                Button {
                    messageString = "You Are Awesome!"
                } label: {
                    Text("Awesome")
                }
                
                Button {
                    messageString = "You Are Great!"
                } label: {
                    Text("Great")
                }
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .border(.purple)
        }
    }
}

#Preview {
    ContentView()
}
