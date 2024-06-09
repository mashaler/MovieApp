//
//  MoviesSelectedMenuStore.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 04/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

final class MoviesSelectedMenuStore: ObservableObject {
    let pageListener: MoviesMenuListPageListener
    
    @Published var menu: MoviesMenu {
        didSet {
            pageListener.menu = menu
        }
    }
        
    init(selectedMenu: MoviesMenu) {
        self.menu = selectedMenu
        self.pageListener = MoviesMenuListPageListener(menu: selectedMenu)
    }
}
