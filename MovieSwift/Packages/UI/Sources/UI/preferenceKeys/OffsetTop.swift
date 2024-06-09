//
//  OffsetTop.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 02/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import SwiftUI

public struct OffsetTopPreferenceKey: PreferenceKey {
    static public var defaultValue: CGFloat = 0
    public typealias Value = CGFloat
    
    static public func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
