//
//  ContentView.swift
//  Finding Sums
//
//  Created by Benjamin Lavallee on 2023-11-16.
//

import SwiftUI

struct ContentView: View {
    //MARK: Stored propterties
    @State var firstnumber: Int = 1
    @State var secondnumber: Int = 1
    
    //MARK: Computed properties
    var sum: Int {
        return firstnumber + secondnumber
    }
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                HStack {
                    Spacer()
                    Text("\(firstnumber)")
                        .font(.system(size: 44))
                }
                Stepper(value: $firstnumber, label:{
                    Text("select first number")
                })
                HStack {
                    Text("+")
                        .font(.system(size: 44))
                    Spacer()
                    Text("\(secondnumber)")
                        .font(.system(size: 44))
                }
                Stepper(value: $secondnumber, label:{
                    Text("select second number")
                })
                HStack {
                    Spacer()
                    Text("\(sum)")
                        .font(.system(size: 44))
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
