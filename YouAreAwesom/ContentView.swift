//
//  ContentView.swift
//  YouAreAwesom
//
//  Created by Jeff Goddard on 5/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("I am an App Developer!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
        }
        .padding()
         
    }
}

#Preview {
    ContentView()
}
