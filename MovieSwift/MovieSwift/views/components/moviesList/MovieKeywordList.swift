//
//  MovieKeywordList.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 04/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//
import SwiftUI
import SwiftUIFlux

final class KeywordPageListener: MoviesPagesListener {
    var keyword: Int!
    
    override func loadPage() {
        store.dispatch(action: MoviesActions.FetchMovieWithKeywords(keyword: keyword,
                                                                    page: currentPage))
    }
}

struct MovieKeywordList : View {
    @EnvironmentObject var store: Store<AppState>
    @State var pageListener = KeywordPageListener()
    let keyword: Keyword
    
    var movies: [Int] {
        store.state.moviesState.withKeywords[keyword.id] ?? [0, 0, 0, 0]
    }
    
    var body: some View {
        MoviesList(movies: movies, displaySearch: false, pageListener: pageListener)
            .navigationBarTitle(Text(keyword.name.capitalized))
            .onAppear {
                self.pageListener.keyword = self.keyword.id
                self.pageListener.loadPage()
        }
    }
}

#if DEBUG
struct MovieKeywordList_Previews : PreviewProvider {
    static var previews: some View {
        MovieKeywordList(keyword: Keyword(id: 0, name: "Test"))
    }
}
#endif
