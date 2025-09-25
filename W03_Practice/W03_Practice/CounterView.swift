//
//  CounterView.swift
//  W03_Practice
//
//  Created by student on 25/09/25.
//

import SwiftUI

struct CounterView: View {
    @Binding var count: Int //kalau punya state atau binding disini hrs di passing ke content view
    //kalau state gabisa di passing
    
    var body: some View {
        VStack{
            Text("Chile View (CounterView")
                .font(.headline)
                
            HStack{
                Button("-"){
                    count -= 1
                }.buttonStyle(.bordered)
                    
                Button("+"){
                    count += 1
                }.buttonStyle(.bordered)
            }
        }
        .padding()
        .background(.red.opacity(0.8))
        .cornerRadius(10)
    }
}
