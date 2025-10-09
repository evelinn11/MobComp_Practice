//
//  Task.swift
//  W05_Practice
//
//  Created by student on 09/10/25.
//

import Foundation

//Nama Model disamakan dengan View dan View Model
//Buat model terlebih dulu

//Model harus matang diawal, baru fungsi, baru tampilan
//Model, ViewModel, View

struct Task: Identifiable, Codable, Hashable {
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
}
