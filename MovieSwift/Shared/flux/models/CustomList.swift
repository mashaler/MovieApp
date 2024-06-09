//
//  CustomList.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 02/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import Foundation
import SwiftUI

struct CustomList: Codable, Identifiable {
    let id: Int
    var name: String
    var cover: Int?
    var movies: Set<Int>
}
