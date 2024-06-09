//
//  MovieImage.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 02/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import Foundation
import SwiftUI

struct ImageData: Codable, Identifiable {
    var id: String {
        file_path
    }
    let aspect_ratio: Float
    let file_path: String
    let height: Int
    let width: Int
}
