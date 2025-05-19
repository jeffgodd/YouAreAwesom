//
//  ContentView.swift
//  YouAreAwesom
//
//  Created by Jeff Goddard on 5/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var isAwesome = false
    
    var body: some View {
        
        VStack {
            Spacer()
                
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            HStack {
                Button("Press Me!") {
                    isAwesome.toggle()
                    if isAwesome {
                        message = "You Are Awesome!"
                        imageName = "sun.max.fill"
                    } else {
                        message = "You Are Great!"
                        imageName = "hand.thumbsup"
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
        }
        .padding()
         
    }
}

#Preview {
    ContentView()
}
 
