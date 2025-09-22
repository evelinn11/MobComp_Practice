//
//  ContentView.swift
//  TH02_MobComp
//
//  Created by student on 22/09/25.
//

import SwiftUI


struct ContentView: View {
    
    @State private var addToDo: String = ""
    @State private var toDoList = ["Makan ramen 🍜", "Minum aqua 1L 💧", "Mengerjakan take home 📝", "Cuci baju 👗", "Membersihkan kamar 🛏️"]
    
    func addItem(){
        toDoList.insert(addToDo, at: 0)
        addToDo = ""
    }
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    VStack (alignment: .leading, spacing: 10){
                        Text("To Do List 📘")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 5)
                    
                    Spacer()
                }
                
                HStack{
                    TextField("Add To Do...", text: $addToDo)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    
                    Button("Add"){
                        addItem()
                    }
                    .disabled(addToDo.isEmpty)
                    .buttonStyle(.borderedProminent)
                    .padding()
                }
                
                List {
                    ForEach(toDoList, id: \.self) { todo in
                        Text(todo)
                    }
                    .onDelete { toDoList.remove(atOffsets: $0) }
                    .onMove { toDoList.move(fromOffsets: $0, toOffset: $1) }
                }
                .toolbar {
                    EditButton()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
