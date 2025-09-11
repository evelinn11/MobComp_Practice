//
//  ContentView.swift
//  W01_Practice
//
//  Created by student on 11/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)
            Text("Declarative UI")
                .font(.headline)
            Text("☺️")
            
            Image(systemName: "sparkles")
                .imageScale(.large)
                .foregroundStyle(.linearGradient(Gradient(colors: [.blue, .indigo, .red]), startPoint: .top, endPoint: .bottom)
                )
                .font(.system(size: 100))
                .padding()
                .overlay(content: {
                    Circle().strokeBorder(.gray.opacity(0.3), lineWidth: 2)
                })
        }
        
        VStack (alignment: .leading, spacing:15){
            HStack{
                Text("ABCDE")
                Text("12345")
                Text("👋")
            }
            
        }
        
        HStack{
            VStack{
                Text("😊")
            }
            VStack{
                Text("😭")
            }
            VStack{
                Text("❤️")
            }
        }
        .padding()
    }
    // let = constant, var = variable
    let name = "Alice"
    var age = 20
    func greet(){
        print("Hello, \(name), age \(age)")
    }
    //VStack = vertical
    //HStack = horizontal
    //ZStack = numpuk di depannya
}

#Preview {
    ContentView()
}
