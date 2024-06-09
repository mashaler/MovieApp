//
//  MoviesView.swift
//  MovieSwiftTV
//
//  Created by Rolva Mashale on 06/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import SwiftUI
import SwiftUIFlux
import Backend

struct MoviesView: ConnectedView {
    struct Props {
        let movies: [Int]
    }
    
    @Binding var menu: MoviesMenu
    
    func map(state: AppState, dispatch: @escaping DispatchFunction) -> Props {
        return Props(movies: state.moviesState.moviesList[menu] ?? [])
    }
    
    func body(props: Props) -> some View {
        NavigationView {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(props.movies, id: \.self) { id in
                        NavigationLink(destination: Text("Test")) {
                            MoviePosterImage(imageLoader: ImageLoader(path: store.state.moviesState.movies[id]?.poster_path,
                                                                      size: .medium),
                                posterSize: PosterStyle.Size.tv)
                        }
                    }
                }.frame(height: PosterStyle.Size.tv.height() + 50)
            }
            .onAppear{
                store.dispatch(action: MoviesActions.FetchMoviesMenuList(list: self.menu, page: 1))
            }
        }
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView(menu: .constant(.popular))
    }
}
