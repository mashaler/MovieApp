//
//  MoviePosterImage.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 02/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import SwiftUI
import Backend

struct MoviePosterImage: View {
    @ObservedObject var imageLoader: ImageLoader
    @State var isImageLoaded = false
    let posterSize: PosterStyle.Size
    
    var body: some View {
        if let image = imageLoader.image {
            Image(uiImage: image)
                .resizable()
                .renderingMode(.original)
                .posterStyle(loaded: true, size: posterSize)
                .onAppear{
                    isImageLoaded = true
                }
                .animation(.easeInOut)
                .transition(.opacity)
        } else {
            Rectangle()
                .foregroundColor(.gray)
                .posterStyle(loaded: false, size: posterSize)
        }
    }
}
