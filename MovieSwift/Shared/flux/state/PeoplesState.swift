//
//  CastsState.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 02/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import Foundation
import SwiftUIFlux

struct PeoplesState: FluxState, Codable {
    var peoples: [Int: People] = [:]
    var peoplesMovies: [Int: Set<Int>] = [:]
    var search: [String: [Int]] = [:]
    var popular: [Int] = []
    
    /// [PeopleId: [MovieId:  Character]]
    var casts: [Int: [Int: String]] = [:]
    /// [PeopleId: [MovieId:  Character]]
    var crews: [Int: [Int: String]] = [:]
    
    var fanClub: Set<Int> = Set()
    
    enum CodingKeys: String, CodingKey {
        case peoples, fanClub
    }
}
