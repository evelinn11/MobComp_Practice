//
//  ContentView.swift
//  W05_Practice
//
//  Created by student on 09/10/25.
//

//Struktur SwiftUI
//Model - ViewModel - View
//Model lebih cocok pakai swift, kalau SwiftUI utk View

import SwiftUI

struct CounterHomeView: View{
    @State private var vm = CounterVM()
    var body : some View{
        NavigationStack{
            VStack(spacing: 16){
                Text("Count: \(vm.count)")
                    .font(.largeTitle).bold()
                Text(vm.isEven ? "Even" : "Odd")
                    .foregroundStyle(.secondary)
                HStack{
                    Button("+"){ vm.increment()}
                    Button("-") {vm.decrement()}
                }
                
                Button("Reset"){vm.reset()}
                    .buttonStyle(.borderedProminent)
            }
            NavigationLink("Mirror Screen"){
                CounterMirrorView(vm:vm)
            }
        }
    }
}

struct CounterMirrorView: View{
    var vm : CounterVM
    
    var body : some View{
        VStack(spacing: 16){
            Text("Mirror Count: \(vm.count)")
            Button("Add here"){ vm.increment()}
        }
        .font(.title2)
        .padding()
    }
}

#Preview {
    CounterHomeView()
}
