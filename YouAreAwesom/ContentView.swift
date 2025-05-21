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
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    @State private var lastMessageNumber = 0
    @State private var lastImageNumber = 0
    
    var body: some View {
        
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message )
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName )
           
            Spacer()
            
            Button("Show Message") {
                let messages = ["You Are Awesome!",
                                "When the Genius Bar Needs Help, They Call You!",
                                "You Are Great!",
                                "You Are Fabulous",
                                "You Are Amazing!",
                                "Wonderful, That's you!",
                                "You Are Handsome!"]

                repeat {
                    messageNumber = Int.random(in: 0...messages.count-1)
                    imageNumber = Int.random(in: 0...9)
                } while messageNumber == lastMessageNumber || imageNumber == lastImageNumber
                
                lastImageNumber = imageNumber
                lastMessageNumber = messageNumber
                message = messages[messageNumber]
                imageName = "image\(imageNumber)"
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}

