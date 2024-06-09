
//
//  ReviewROw.swift
//  MovieSwift
//
//  Created by Rolva Mashale on 04/06/2024.
//  Copyright © 2024 Rolva Mashale. All rights reserved.
//

import SwiftUI

struct ReviewRow : View {
    let review: Review
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Review written by \(review.author)")
                .font(.subheadline)
                .fontWeight(.bold)
                .lineLimit(1)
            Text(review.content)
                .font(.body)
                .lineLimit(nil)
        }
        .padding(.vertical)
    }
}

#if DEBUG
struct ReviewRow_Previews : PreviewProvider {
    static var previews: some View {
        ReviewRow(review: Review(id: "0", author: "Test", content: "Test body"))
    }
}
#endif
