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
    @State private var lastMessageNumber = -1 //make sure you can access 0
    @State private var lastImageNumber = -1
    
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
                
                var messageNumber: Int
                var imageNumber: Int
                
                repeat {
                    messageNumber = Int.random(in: 0...messages.count-1)
                } while messageNumber == lastMessageNumber
                
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                repeat {
                    imageNumber = Int.random(in: 0...9)
                } while imageNumber == lastImageNumber
                
                lastImageNumber = imageNumber
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

