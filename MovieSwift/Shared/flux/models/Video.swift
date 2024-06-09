//
//  Video.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 02/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let site: String
    let key: String
    let type: String
}
