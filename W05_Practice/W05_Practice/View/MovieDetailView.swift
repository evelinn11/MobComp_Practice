//
//  MovieDetailView.swift
//  W05_Practice
//
//  Created by student on 09/10/25.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie //hanya passing data
    var vm: MovieViewModel
    
    var body: some View {
        VStack{
            Text(movie.title)
                .font(.largeTitle).bold()
            
            Text(movie.genre.name)
                .padding(10)
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius:8))
            
            Button {
                vm.toggleFavorite(movie)
            } label : {
                Label(movie.isFavorite ? "Unfavorite" :
                        "Favorite",
                      systemImage: movie.isFavorite ? "heart.slash" : "heart")
            }.buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .padding()
        .navigationTitle(movie.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MovieHomeView()
}
