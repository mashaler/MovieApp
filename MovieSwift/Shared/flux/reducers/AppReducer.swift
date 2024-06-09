//
//  AppReducer.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 02/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import Foundation
import SwiftUIFlux

func appStateReducer(state: AppState, action: Action) -> AppState {
    var state = state
    state.moviesState = moviesStateReducer(state: state.moviesState, action: action)
    state.peoplesState = peoplesStateReducer(state: state.peoplesState, action: action)
    return state
}
