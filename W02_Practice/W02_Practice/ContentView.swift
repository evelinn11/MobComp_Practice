//
//  ContentView.swift
//  W02_Practice
//
//  Created by student on 18/09/25.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var isOn:Bool = false
//    @State private var volume:Double = 0.5
//    @State private var name:String = ""
    @State private var point = 80;
    
    private func progressCard(score: Int) -> some View{
        VStack(){
            Text ("Current Score").font(.headline)
            ProgressView(value: Double(score), total:100)
            Text("\(score)/100")
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(.green.opacity(0.88))
        .clipShape(RoundedRectangle (cornerRadius: 20))
    }
    
    private func actionButton(_ title: String, action: @escaping () -> Void) -> some View {
        Button(title, action: action)
            .padding(.horizontal, 16).padding(.vertical, 10)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
    }
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    var body: some View {
        
        //VSTACK, HSTACK, ZSTACK
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        VStack(
//            alignment: .leading,
//            spacing: 20
//        ) {
//            ForEach(
//                1...10,
//                id: \.self
//            ) {
//                Text("Item \($0)")
//            }
//        }
//        VStack(spacing:8){
//            Text("Evelin Alim")
//            Text("Surabaya")
//            Spacer()
//            Text("Evelin")
//            Spacer()
//        }
//        ZStack{
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.pink)
//                .frame(width:200, height:125)
//                .font(.headline)
//            
//            Text("Hello, World!")
//                .foregroundColor(.white)
//                .font(.headline)
//            
//            Circle()
//                .frame(width: 50, height: 50)
//                .opacity(0.2)
//            
//        }
//        .padding()
//        .background(Color.blue.opacity(0.2))
        
        //PADDING
//        Text("Kuliah SwiftUI")
//            .frame(width: .infinity, alignment: .leading)
//            .background(.red)
//            .padding(5)
//            .background(.blue)
//            .cornerRadius(10)
//            .shadow(color: .black, radius: 10, x:5, y:5)
//            .opacity(0.9)
//            .padding(50)
//        
//        ZStack{
//            RoundedRectangle(cornerRadius: 10)
//                .fill(.red)
//                .frame(width:200, height: 125)
//                .opacity(0.2)
//                .shadow(color: .black, radius: 5, x:2, y:2)
//    
//            HStack{
//                Text("Evelin")
//                    .font(.headline)
//                    .padding(.trailing, 70)
//                    .padding(.bottom, 80)
//                
//                VStack{
//                    Text("🐣")
//                    HStack{
//                        Text("🍇")
//                        Text("🥭")
//                    }
//                }
//                .padding(.top, 70)
//            }
//        }
        
        //BUTTON
//        VStack{
//            Button("Click"){
//                //Event
//                print("Button Clicked!")
//                
//            }
//            .buttonStyle(.bordered)
//            .tint(.purple)
//        }
//        .padding(50)
//        
//        ZStack{
//            RoundedRectangle(cornerRadius: 10)
//                .fill(.gray)
//                .frame(width:70, height: 40)
//                .opacity(0.2)
//                .shadow(color: .black, radius: 5, x:2, y:2)
//                
//            VStack{
//                Button("Click"){
//                    print("Button Clicked!")
//                }
//            }
//        }
        
        //IMAGE
//        HStack{
//            Image(systemName: "sun.max.fill")
//                .symbolRenderingMode(.multicolor)
//                .font(.system(size: 100))
//            
//            Image(systemName: "cloud.heavyrain.fill")
//                .symbolRenderingMode(.multicolor)
//                .font(.system(size: 80))
//                .shadow(radius: 5)
//        }
        
        //TOGGLE
//        VStack{
//            Toggle("Enable Notifications", isOn: $isOn)
//                .padding()
//            Text(isOn ? "Hore" : "Yahh")
//            
//            Slider(value: $volume, in: 0...1)
//            Text("Volume sekarang : \(volume)%")
//            
//            TextField("Namamu siapa?", text: $name)
//                .textFieldStyle(.roundedBorder)
//                .padding()
//            //Text("Hello \(name)!")
//            Text(name == "" ? "Hai" : "Hello, \(name)")
//        }
        
        // Container
//        VStack{
//            progressCard(score: point)
//            HStack{
//                actionButton("Add 10"){
//                    if point < 100{
//                        point += 10
//                    }
//                }
//                actionButton("Reset"){
//                    point = 0
//                }
//            }
//        }
        
        //LIST
        List(fruits, id: \.self) {fruit in
            HStack {
                Text(fruit)
                Spacer()
                Text("uiiai")
            }
        }
    }
}

#Preview {
    ContentView()
}
