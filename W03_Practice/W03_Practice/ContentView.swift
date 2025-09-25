//
//  ContentView.swift
//  W03_Practice
//
//  Created by student on 25/09/25.
//

import SwiftUI
//MVVM

struct ContentView: View { //Struct itu immutable
    //@State private var count = 0 //property wrapper
    //ketika variabelnya bukan state, maka variabelnya immutable karena ui refresh terus
    //jika ada state, value dlm variabel dapat diubah termasuk pada view nya
    //@State private var nama = ""
    //@State private var totalCount = 0
    
    var body: some View {
       // VStack {
            //            Text ("Hitung : \(count)")
            //                .font(.largeTitle)
            //            Text ("Nama : \(nama)")
            //
            //            TextField("Isi Nama",text:$nama)
            //                .textFieldStyle(RoundedBorderTextFieldStyle())
            //
            //            HStack{
            //                Button("-"){
            //                    count -= 1
            //                }
            //                .font(Font.largeTitle.bold())
            //                Button ("+"){
            //                    count += 1
            //                }
            //                .font(Font.largeTitle.bold())
            //            }
            
//            Text("Parent View")
//                .font(.largeTitle)
//            Text("Total Count : \(totalCount)")
//                .font(.title2)
//                .padding()
//            
//            CounterView(count: $totalCount)
//            Spacer()
//        }
//        .padding()
//        .background(.green.opacity((0.6)))
    
        
//        
//        TabView{
//            HomeView()
//                .tabItem {
//                    Label("Home", systemImage: "house.fill")
//                }
//                .badge("1")
//            SearchView()
//                .tabItem {
//                    Label("Search", systemImage: "magnifyingglass")
//                }
//            ProfileView()
//                .tabItem {
//                    Label("Profile", systemImage: "person.circle")
//                }
//        }
//        .tint(.purple)
        
        NavigationStack{
            VStack(spacing: 20){
                Text("🏡 Home Screen")
                    .font(.largeTitle)
                NavigationLink("Go to Details"){
                    DetailScreen()
                }
                NavigationLink("Show Item"){
                    ItemScreen()
                }
            }
        }
    }
}

struct DetailScreen: View {
    var body: some View {
        VStack{
            Text("📑 Detail Screen")
                .font(Font.largeTitle)
            Text("You come from home screen!")
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemScreen: View {
    let items = ["Tomato", "Papaya", "Pineapple"]
    var body: some View {
        List(items, id:\.self){item in NavigationLink(destination: ItemDetailScreen(item: item)){
            Text(item)
            }
        }
        .navigationDestination(for: String.self){
            item in ItemDetailScreen(item: item)
        }
        .navigationTitle("Items")
    }
}

struct ItemDetailScreen: View {
    let item: String
    var body: some View {
        VStack{
            Text("Welcome to itemDetail!")
            Text("You selected : \(item)")
        }
        .navigationTitle(item)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HomeView: View {
    @State private var textKu: String = ""
    var body: some View {
        Form{
            VStack{
                Text("🏡 Home!")
                    .font(Font.largeTitle)
                Text("Hai")
//                TextField("Name", text:$textKu)
            }
            Text("Haloo")
            Text("AAAAA")
        }
        .padding()
        .background(.purple.opacity(0.3))
    }
}

struct SearchView: View {
    var body: some View {
        Text("🔍 Search!")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("👤 Profile!")
    }
}


#Preview {
    ContentView()
}
