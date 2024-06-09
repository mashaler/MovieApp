//
//  MoviesHomeListPageListener.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 04/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import Foundation

final class MoviesMenuListPageListener: MoviesPagesListener {
    var menu: MoviesMenu {
        didSet {
            currentPage = 1
        }
    }
    
    override func loadPage() {
        store.dispatch(action: MoviesActions.FetchMoviesMenuList(list: menu, page: currentPage))
    }
    
    init(menu: MoviesMenu, loadOnInit: Bool? = true) {
        self.menu = menu
        
        super.init()
        
        if loadOnInit == true {
            loadPage()
        }
    }
}
