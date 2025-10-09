//
//  TaskViewModel.swift
//  W05_Practice
//
//  Created by student on 09/10/25.
//

import Foundation
import Observation
import SwiftUI

@Observable
final class TaskViewModel {
    var tasks: [Task] = [
        .init(title: "Beli booster"),
        .init(title: "Beli makanan", isCompleted: true)
    ] //tasks itu isinya array dr task, init utk isi tasknya
    
    func add(_ title: String){
        let clean = title.trimmingCharacters(in: .whitespacesAndNewlines) //trim kiri kanan
        if clean.isEmpty { return }
        tasks.append(.init(title: clean)) //append utk nambah ke array, disini akan menambahkan input yg sudah di trimming
    }
    
    func remove(at offsets: IndexSet){
        tasks.remove(atOffsets: offsets)
        //delete dengan cara swipe
    }
    
    func toggle(_ task:Task){
        if let idx = tasks.firstIndex(where: { $0.id == task.id}) //dimana id yg dipilih itu smaa dengan id yang didalam tasks
        {
            tasks[idx].isCompleted.toggle()
        } //first index akan mengembalikan index pertama yang ditemukan
    }
}
