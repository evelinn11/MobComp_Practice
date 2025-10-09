//
//  TaskListView.swift
//  W05_Practice
//
//  Created by student on 09/10/25.
//

import SwiftUI

struct TaskListView: View {
    @State private var vm = TaskViewModel() //view modelnya
    @State private var newTask = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    TextField("New Task", text: $newTask)
                        .textFieldStyle(.roundedBorder)
                    Button("Add") {
                        vm.add(newTask)
                        newTask = ""
                    }
                    .buttonStyle(.borderedProminent)
                    //bisa pakai guard supaya gabisa diisi kosong
                    .disabled(newTask.trimmingCharacters(in: .whitespaces).isEmpty) //disabling button
                }
            }
            .padding()
            
            List{
                ForEach(vm.tasks) { task in
                    HStack{
                        Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "checkmark.circle")
                            .foregroundStyle(task.isCompleted ? .green : .secondary)
                            .onTapGesture {
                                vm.toggle(task)
                            }
                        Text(task.title)
                            .strikethrough(task.isCompleted)
                    }
                }
                .onDelete(perform: vm.remove)
            }
            .listStyle(.inset)
        }
        .navigationTitle("📑 Tugass tross")
        .toolbar{EditButton()}
    }
}

#Preview {
    TaskListView()
}
