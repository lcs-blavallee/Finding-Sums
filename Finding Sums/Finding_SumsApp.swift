//
//  Finding_SumsApp.swift
//  Finding Sums
//
//  Created by Benjamin Lavallee on 2023-11-16.
//

import SwiftUI

@main
struct Finding_SumsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView(selection: Binding.constant(3)) {
                
                PlusView()
                    .tabItem {
                        Image(systemName: "plus")
                        Text("Plus")
                    }
                    .tag(1)
                
                MinusView()
                     .tabItem {
                        Image(systemName: "minus")
                        Text("Minus")
                    }
                     .tag(2)
                
                MultiplyView()
                    .tabItem {
                        Image(systemName: "multiply")
                        Text("Multiply")
                    }
                    .tag(3)
                
                DivideView()
                    .tabItem{
                        Image(systemName: "divide")
                        Text("Divide")
                    }
                    .tag(4)
            }
            
            .accentColor(.purple)
            .preferredColorScheme(.light)
        }
    }
}

