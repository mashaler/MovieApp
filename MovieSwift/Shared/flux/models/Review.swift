//
//  Review.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 02/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import Foundation
import SwiftUI

struct Review: Codable, Identifiable {
    let id: String
    let author: String
    let content: String
}
