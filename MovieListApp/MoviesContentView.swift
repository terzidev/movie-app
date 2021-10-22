//
//  MoviesContentView.swift
//  MovieListApp
//
//  Created by tailorr on 17.10.2021.
//

import SwiftUI
import Combine

struct MoviesItem {
    var id: Int
    var movieName: String
    var movieNameLabel: String
    var movieImage: String
    var selectedMovie: Bool
}

struct MoviesOverview {
    var id: Int
    var movieOverview: String
    var moviePosterImage: String
    var overviewArray: [Overview]
   
}


struct MoviesData {
    var id: Int
    var moviesOverview: [MoviesOverview]
}

struct Overview {
    var id: Int
    var movieLanguage: String
    var movieBackdropImage: String
    var movieOverview: String
}

class MoviesClass: ObservableObject {
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    var moviesCollection : [MoviesData] {
       willSet {
            objectWillChange.send()
        }
    }
    
    var movies: [MoviesItem] {
        willSet {
                   objectWillChange.send()
               }
    }
    
    init(data: [MoviesData], items: [MoviesItem] ) {
        self.moviesCollection = data
        self.movies = items
    }
}

class MovieSelected: ObservableObject {
    @Published var index: Int = 0
}

struct MoviesContentView: View {
    
    @ObservedObject var moviesData : MoviesClass
    @ObservedObject var selectedMovie = MovieSelected()
    @State var isShowing: Bool = false
    @State var movieItemSelected: MoviesOverview? = nil
    
    var body: some View {
        GeometryReader { g in
            ScrollView{
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                })
                        
                       
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                                    VStack (spacing: 10) {
                                        ForEach(self.moviesData.moviesCollection[self.selectedMovie.index].moviesOverview, id: \.id) { item in
                                            Button(action: {
                                                self.movieItemSelected = item
                                                self.isShowing = true
                                            }) {
                                                ShopBestSellerViews(activityPlaces: item)
                                                                    .frame(width: 155, height: 225)
                                            }
                                        }
                                        
                                }.padding(.leading, 100)
                                 .padding(.trailing, 30)
                                 .padding(.bottom, 10)
                                
                        }
                        
                        .padding(.leading, 30)
                        
                        
                    }
                    .navigationBarTitle("Filmler")
                    .navigationBarItems(trailing:
                    Button(action: {
                    }) {

                    })
            }.sheet(isPresented: self.$isShowing) { MovieOverviewView(isShowing: self.$isShowing, movieItem: self.$movieItemSelected)}
        }
    }

struct ShopBestSellerViews: View {
    
    var activityPlaces: MoviesOverview
    
    var body: some View {
            ZStack{
                Image("\(activityPlaces.moviePosterImage)").renderingMode(.original)
                        .resizable()
                        .frame(width: 155, height: 225)
                        .background(Color.black)
                        .cornerRadius(25)
                        .opacity(0.8)
                        .aspectRatio(contentMode: .fill)
               
                VStack (alignment: .leading) {
                    Spacer()
                        
                    Text(activityPlaces.movieOverview)
                        
                        .foregroundColor(Color.white)
                        .font(.system(size: 20, weight: .bold, design: Font.Design.default))
                        .padding(.bottom, 24)
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.white)
    }
}

