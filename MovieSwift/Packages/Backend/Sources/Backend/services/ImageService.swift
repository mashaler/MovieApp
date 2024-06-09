//
//  ImageService.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 02/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
import UIKit

public class ImageService {
    public static let shared = ImageService()
    
    public enum Size: String {
        case small = "https://image.tmdb.org/t/p/w154/"
        case medium = "https://image.tmdb.org/t/p/w500/"
        case cast = "https://image.tmdb.org/t/p/w185/"
        case original = "https://image.tmdb.org/t/p/original/"
        
        func path(poster: String) -> URL {
            return URL(string: rawValue)!.appendingPathComponent(poster)
        }
    }
    
    public enum ImageError: Error {
        case decodingError
    }
    
    public func fetchImage(poster: String, size: Size) -> AnyPublisher<UIImage?, Never> {
        return URLSession.shared.dataTaskPublisher(for: size.path(poster: poster))
            .tryMap { (data, response) -> UIImage? in
                return UIImage(data: data)
        }.catch { error in
            return Just(nil)
        }
        .eraseToAnyPublisher()
    }
}
