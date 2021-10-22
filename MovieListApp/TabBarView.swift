//
//  TabBarView.swift
//  MovieListApp
//
//  Created by tailorr on 17.10.2021.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            NavigationView {
                MoviesContentView(moviesData: MoviesClass(data: Movies.movieData, items: Movies.movies))
            }
            .tag(0)
            .tabItem {
                Text("Filmler")
            }
            
            NavigationView {
                MoviesFavView(MoviesFavItemsData: MoviesFav(data: Movies.moviesFavData))
            }
            .tag(1)
            .tabItem {
                Text("Favori Filmler")
            }
        }
    }
}
