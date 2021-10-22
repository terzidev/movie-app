//
//  MoviesOverviewView.swift
//  MovieListApp
//
//  Created by tailorr on 17.10.2021.
//

import SwiftUI
import Combine

class SelectedPoint: ObservableObject {
    @Published var selectedIndex: Int = 0
}

struct MovieOverviewView : View {
    @Binding var isShowing: Bool
    @Binding var movieItem: MoviesOverview?
    let defaultPoint = Overview(id: 0, movieLanguage: "Default", movieBackdropImage: "Default PlaceHolder", movieOverview: "Default Description PlaceHolder")
    
    @ObservedObject var selectedPoint = SelectedPoint()
    
    var body: some View {
        GeometryReader { g in
            ZStack {
                Image(self.movieItem?.overviewArray[self.selectedPoint.selectedIndex].movieBackdropImage ?? "")
                    
                    .frame(width: g.size.width, height: g.size.height)
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.3)
                    .background(Color.black)
                    .onDisappear {
                        self.isShowing = false
                }
                
                VStack(alignment: .leading) {
                    Text(self.movieItem?.movieOverview ?? "")
                        .foregroundColor(Color.white)
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .padding(.top, 34)
                        .padding(.leading, 30)
                    HStack{
                        Spacer()
                    }
                    
                    Spacer()
                    
                    MovieOverview(movieItems: self.movieItem?.overviewArray[self.selectedPoint.selectedIndex] ?? self.defaultPoint)
                        .padding(.bottom, 50)
                    
                   .padding(.bottom, 50)
                    
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct PlacesCircleView: View {
    var placeItems: Overview
    @ObservedObject var selectedPoint: SelectedPoint
    
    var body: some View {
        GeometryReader { g in
            Button(action: {
                self.selectedPoint.selectedIndex = self.placeItems.id
            }) {
                ZStack {
                    Image(self.placeItems.movieBackdropImage).renderingMode(.original)
                        .resizable()
                        .frame(width: 110, height: 110)
                        .background(Color.red)
                        .clipShape(Circle())
                    
                    if (self.selectedPoint.selectedIndex == self.placeItems.id) {
                    }
                }
            }
        }
    }
}

struct MovieOverview: View {
    var movieItems: Overview
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(movieItems.movieLanguage)
                .foregroundColor(Color.white)
                .font(.system(size: 24, weight: .bold, design: .default))
                .padding(.leading, 30)
            
            Text(movieItems.movieOverview)
                .foregroundColor(Color.white)
                .font(.system(size: 16, weight: .regular, design: .default))
                .padding(.leading, 30)
                .padding(.trailing, 30)
        }
    }
}

