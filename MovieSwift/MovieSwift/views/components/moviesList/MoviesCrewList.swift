//
//  MovieCrewList.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 04/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import SwiftUI
import SwiftUIFlux

struct MoviesCrewList : View {
    @EnvironmentObject var store: Store<AppState>
    let crew: People

    var body: some View {
        MoviesList(movies: store.state.moviesState.withCrew[crew.id] ?? [], displaySearch: false)
            .navigationBarTitle(Text(crew.name))
            .onAppear {
                self.store.dispatch(action: MoviesActions.FetchMovieWithCrew(crew: self.crew.id))
        }
    }
}

#if DEBUG
struct MovieCrewList_Previews : PreviewProvider {
    static var previews: some View {
        MoviesCrewList(crew: sampleCasts.first!)
    }
}
#endif
