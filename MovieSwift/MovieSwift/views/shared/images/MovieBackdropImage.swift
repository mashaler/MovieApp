//
//  MovieBackdropImage.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 07/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import SwiftUI
import Backend

struct MovieBackdropImage : View {
    enum DisplayMode {
        case background, normal
    }
    
    @ObservedObject var imageLoader: ImageLoader
    @State var isImageLoaded = false
    @State var displayMode: DisplayMode = .normal
    
    var body: some View {
        ZStack {
            if self.imageLoader.image != nil {
                Image(uiImage: self.imageLoader.image!)
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 280, height: displayMode == .normal ? 168 : 50)
                    .animation(.easeInOut)
                    .onAppear{
                        DispatchQueue.main.async {
                            self.isImageLoaded = true
                        }
                }
            } else {
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.1)
                    .frame(width: 280, height: displayMode == .normal ? 168 : 50)
            }
        }
    }
}
