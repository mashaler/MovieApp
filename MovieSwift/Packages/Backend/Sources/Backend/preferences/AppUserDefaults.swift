//
//  UserDefaults.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 02/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import Foundation

public struct AppUserDefaults {
    @UserDefault("user_region", defaultValue: Locale.current.regionCode ?? "US")
    public static var region: String
        
    @UserDefault("original_title", defaultValue: false)
    public static var alwaysOriginalTitle: Bool
}
