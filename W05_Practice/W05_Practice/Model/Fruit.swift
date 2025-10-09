//
//  Fruit.swift
//  W05_Practice
//
//  Created by student on 09/10/25.
//

import Foundation

struct Fruit: Identifiable, Codable, Hashable {
    let UUID: UUID //Universal Unique ID
    let id: String //A001
    let name: String //Apple
    let color: String //Green
    
    // Identifiable = Who's who
    // Codable = Struct ini bisa komunikasi dengan file lain / API
    // Hashable = Swift bisa melakukan komparasi / track codenya
    
    //ForEach (fruits, id:\.id) (fruit) in {
        //id: \.id artinya untuk setiap fruits yang kita punya mereka punya identifier yang unik, bisa dikenali dr objectnya id
        //sesuai dengan yang didalam struct (id, name, color), konsepnya kalau di database ini primary key
    //}
    
}
