//
//  ContentView.swift
//  Ios lifescycle demo
//
//  Created by HEMANTH on 06/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.scenePhase) private var scenePhase
    
    @State private var currentState = ScenePhase.active
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world! ")
            
        }
        .onChange(of:scenePhase){ newValue in
            currentState = newValue
            switch(newValue) {
            case .active : print("active")
            case .inactive : print("inactive")
            case .background : print("background")
            default: print("nothing")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
