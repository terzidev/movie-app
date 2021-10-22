//
//  MoviesFavView.swift
//  MovieListApp
//
//  Created by tailorr on 19.10.2021.
//

import SwiftUI
import Combine

class MoviesFav: ObservableObject {
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    var MoviesFavArray : [MoviesFavItem] {
       willSet {
            objectWillChange.send()
        }
    }
    
    init(data: [MoviesFavItem] ) {
        self.MoviesFavArray = data
    }
}

struct MoviesFavItem {
    var itemID: String
    var itemName: String
    var itemColor: String
    var itemImage: String
}

struct MoviesFavView: View {
    
    @ObservedObject var MoviesFavItemsData : MoviesFav
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Divider()
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    HStack {
                        Spacer()
                        Button(action: {
                        }){
                            Text("Edit")
                        }.foregroundColor(Color.blue)
                        .padding(.trailing, 12)
                        .padding(.top, 8)
                    }
                    .navigationBarTitle("Favori Filmler")
                    
                ScrollView (.vertical, showsIndicators: false) {
                    VStack (alignment: .leading) {
                        ForEach(self.MoviesFavItemsData.MoviesFavArray, id: \.itemID) { item in
                            MoviesFavCellView(moviesFavItem: item)
                                .frame(width: geometry.size.width - 24, height: 80)
                            }
                    }
                }
                .frame(height: 87 * 4)
                
                Spacer()
            }
        }
    }


struct ShoppingFinalInfoView: View {
    @ObservedObject var MoviesFavItemsData : MoviesFav
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                VStack (alignment: .leading){
                    Spacer()
                    HStack {
                        Spacer()
                    }
                }.frame(width: geometry.size.width / 2 - 12)
                VStack(alignment: .trailing) {
                    Spacer()
                    HStack {
                        Spacer()
                    }
                }
            }
        }
    }
}

struct MoviesFavCellView: View {
    var moviesFavItem: MoviesFavItem
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                HStack (spacing: 10) {
                    Image("\(self.moviesFavItem.itemImage)")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding(.trailing, 5)
                        .padding(.leading, 5)
                    
                    VStack(alignment: .leading, spacing: 3) {
                        HStack {
                            Spacer()
                        }
                        Text("\(self.moviesFavItem.itemName)")
                            .lineLimit(nil)
                            .foregroundColor(.primary)
                        
                        Text("\(self.moviesFavItem.itemColor)")
                            .foregroundColor(.primary)
                            .font(.system(size: 12))
                            .foregroundColor(Color.gray)
                            .padding(.bottom, 10)
                    }.frame(width: geometry.size.width - 150)
                     .padding(.top, 8)
                    VStack(alignment: .trailing){
                        //Spacer()
                        HStack {
                            Spacer()
                        }

                    }.padding(.bottom, 10)
                }
            }
            
        }.background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
        .cornerRadius(10)
       
       
    }
}
}

