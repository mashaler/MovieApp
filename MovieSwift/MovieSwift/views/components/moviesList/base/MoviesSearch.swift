//
//  MoviesSearch.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 04/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//
import Foundation
import UI

final class MoviesSearchPageListener: MoviesPagesListener {
    var text: String?
    
    override func loadPage() {
        if let text = text, !text.isEmpty {
            store.dispatch(action: MoviesActions.FetchSearchKeyword(query: text))
            store.dispatch(action: MoviesActions.FetchSearch(query: text, page: currentPage))
            store.dispatch(action: PeopleActions.FetchSearch(query: text, page: currentPage))
        }
    }
}

final class MoviesSearchTextWrapper: SearchTextObservable {
    var searchPageListener = MoviesSearchPageListener()
    
    override func onUpdateTextDebounced(text: String) {
        searchPageListener.text = text
        searchPageListener.currentPage = 1
    }
}
