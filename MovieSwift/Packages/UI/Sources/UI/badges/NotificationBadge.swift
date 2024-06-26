//
//  NotificationBadge.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 02/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import SwiftUI

public struct NotificationBadge : View {
    public let text: String
    public let color: Color
    @Binding public var show: Bool
    
    public init(text: String, color: Color, show: Binding<Bool>) {
        self.text = text
        self.color = color
        self._show = show
    }
    
    var animation: Animation {
        Animation
            .spring()
            .speed(2)
    }
    
    public var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(8)
            .scaleEffect(show ? 1: 0.5)
            .opacity(show ? 1 : 0)
            .animation(animation)
    }
}
