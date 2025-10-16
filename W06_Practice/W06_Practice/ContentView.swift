//
//  ContentView.swift
//  W06_Practice
//
//  Created by student on 16/10/25.
//

import SwiftUI

struct ContentView: View {
    //Array
    @State private var fruits: [String] = ["Apple", "Pear", "Durian"]
    
    //Dictionary
    @State private var scores: [String: Int] = [
        "Alice": 90,
        "Martini": 80,
        "Sutris" : 20
    ]
    
    @Observable
    class Counter {
        var count: Int = 0
        
        func increment() {
            count += 1
        }
        
        func decrement(){
            count -= 1
        }
    }
    
    @State private var counterA = Counter()
    @State private var counterB: Counter? = nil
    
    @State private var name: String = ""
    
    //Set
    @State private var programmingLanguage: Set<String> = ["Swift", "Python", "JavaScript"]
    @State private var newLang: String = ""
    
    //Tuple
    @State private var point: (x:Int, y:Int) = (x:0, y:0)
    
    //Enum
    enum Grade: String, CaseIterable {
        case A, B, C, D, E
        
        var color: Color{
            switch self{
            case .A: return .green
            case .B: return .yellow
            case .C: return .orange
            case .D: return .red
            case .E: return .blue
            }
        }
        
    }
    
    @State private var grade: Grade = .A
    
    enum APIResponse{
        case success(message: String)
        case failure(errorcode: Int, reason: String)
    }
    let response1 = APIResponse.success(message: "Data loaded!")
    
    enum LoadingState{
        case idle
        case loading
        case success (data:String)
        case error(message:String)
    }
    
    @State private var state: LoadingState = .idle
    
    var body: some View {
//        VStack {
//            Text("Array of Fruits")
//                .font(.largeTitle)
//            
//            HStack{
//                ForEach(fruits, id: \.self){
//                    fruit in Text(fruit)
//                        .padding(10)
//                        .background(Color.orange.opacity(0.3))
//                        .clipShape(Capsule())
//                }
//            }
//            
//            HStack{
//                Button("Add Fruit"){
//                    fruits.append("Banana")
//                }
//                .buttonStyle(.borderedProminent)
//                
//                Button("Remove Last"){
//                    if !fruits.isEmpty{
//                        fruits.removeLast()
//                    }
//                }
//            }
//        }
        
        //-----------------------------------------------------
        
//        VStack{
//            Text("Dictionary Explanation")
//                .font(.largeTitle)
//            VStack{
//                ForEach(scores.sorted(by: {$0.key < $1.key}), id: \.key){name, score in
//                    HStack{
//                        Text(name)
//                        Spacer()
//                        Text("\(score)")
//                            .bold()
//                    }
//                }
//            }
//            .padding(10)
//        }
//        HStack{
//            Button("Increase Butris' Score!"){
//                scores["Butris", default:0] += 5
//            }
//            
//            Button("Delete All"){
//                scores.removeAll()
//            }
//        }
//        
//        VStack{
//            TextField("Student name", text: $name)
//                .padding()
//            Button("Input New student"){
//                if (!name.isEmpty){
//                    scores["\(name)", default: 50] += 0
//                    name = ""
//                }
//            }
//        }
        
        //-----------------------------------------
//        VStack{
//            Text("Counter A : \(counterA.count)")
//            Text("Counter B : \(counterB?.count ?? 5)")
//                .foregroundStyle(counterB == nil ? .red : .primary)
//            
//            HStack{
//                Button("+") {counterA.increment()}
//                Button("-") {counterA.decrement()}
//                
//                Button(counterB == nil ? "Clone A to B" : "Unlink B"){
//                    if counterB == nil {
//                        counterB = counterA
//                    }
//                    else{
//                        counterB = nil
//                    }
//                }.buttonStyle(BorderedButtonStyle())
//            }
//            HStack{
//                Button("+") {counterB?.increment()}
//                Button("-") {counterB?.decrement()}
//            }
//        }
        
        //-------------------------------------------
//        VStack{
//            Text("Ini adalah Set")
//                .font(.largeTitle)
//            
//            HStack{
//                ForEach(Array(programmingLanguage), id: \.self)
//                {lang in
//                    Text(lang)
//                        .padding(5)
//                        .background(.green)
//                        .clipShape(Capsule())
//                }
//            }
//            
//            HStack{
//                TextField("Enter new Language", text: $newLang)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .frame(width:200)
//                
//                Button("Add"){
//                    if !newLang.isEmpty{
//                        programmingLanguage.insert(newLang)
//                        newLang = ""
//                    }
//                }
//                .buttonStyle(.borderedProminent)
//            }
//        }
        
        //---------------------------------------------
        //Tuple bisa nerima value duplikat, tetapi urutannya ga bisa diubah, punya index
        
//        VStack{
//            Text("Ini adalah Tuple")
//                .font(.largeTitle)
//            
//            Text("Nilai sekarang XY : \(point.x), \(point.y)")
//            
//            HStack{
//                Button("Kanan 10 langkah"){
//                    point.x += 10
//                }
//                .buttonStyle(.borderedProminent)
//                
//                Button("Kebawah 10 langkah"){
//                    point.y -= 10
//                }
//                .buttonStyle(.borderedProminent)
//            }
//        }
        
        //----------------------------------------------
        
//        VStack{
//            Picker("Select Grade", selection: $grade){
//                ForEach(Grade.allCases, id: \.self) { g in
//                    Text (g.rawValue)
//                }
//            }
//            .pickerStyle(.segmented)
//            
//            Text("Your Grade: \(grade.rawValue)")
//                .font(.largeTitle).bold()
//                .foregroundColor(grade.color)
//        }
        
        //-------------------------------------------------
//        
//        VStack{
//            Group {
//                switch state{
//                case .idle:
//                    Text("Tap to start loading")
//                case .loading:
//                    ProgressView("Loading...")
//                case .success(let data):
//                    Text("Loaded : \(data)")
//                        .foregroundColor(.green)
//                case .error(message: let msg):
//                    Text("Error \(msg)")
//                        .foregroundColor(.red)
//                }
//            }
//            HStack{
//                Button("Start") {state = .loading}
//                Button("Success"){state = .success(data: "KTP mu telah di upload untuk pinjol")}
//            }
//        }
        
        //-------------------------------------------------
        
        
    }
}

#Preview {
    ContentView()
}
