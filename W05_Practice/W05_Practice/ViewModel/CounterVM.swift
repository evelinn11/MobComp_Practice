//
//  CounterVM.swift
//  W05_Practice
//
//  Created by student on 09/10/25.
//

import Foundation
import SwiftUI

@Observable //di iphone 17, sifatnya public class, sehinga bisa dipanggil dimana saja
class CounterVM: ObservableObject {
    var count: Int = 0
    var isEven: Bool {count % 2 == 0}
    
    func increment() {
        count += 1
    }
    
    func decrement() {
        if count > 0 {
            count -= 1
        }
    }
    func reset(){
        count = 0
    }
}
