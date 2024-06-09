//
//  MovieReviews.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 04/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import SwiftUI
import SwiftUIFlux

struct MovieReviews : View {
    @EnvironmentObject var store: Store<AppState>
    
    let movie: Int
    
    var reviews: [Review] {
        return store.state.moviesState.reviews[movie] ?? []
    }
        
    var body: some View {
        List(reviews) {review in
            ReviewRow(review: review)
        }
        .navigationBarTitle(Text("Reviews"))
        .onAppear{
            self.store.dispatch(action: MoviesActions.FetchMovieReviews(movie: self.movie))
        }
    }
}
