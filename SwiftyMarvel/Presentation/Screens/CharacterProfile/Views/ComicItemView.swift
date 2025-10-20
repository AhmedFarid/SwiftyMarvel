//
//  ComicItemView.swift
//  SwiftyMarvel
//
//  Created by Farido on 21/10/2025.
//

import SwiftUI

struct ComicItemView: View {

    let comic: Comic

    var body: some View {
        VStack(alignment: .center) {
            CachedImageView(comic.thumbnailURL)
                .aspectRatio(2/3, contentMode: .fit)
                .cornerRadius(15)
                .frame(height: 200)
            Text(comic.title ?? "")
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .font(.headline)
                .frame(width: 150)
        }//: VStack
        .padding([.leading], 10)
    }
}

#Preview {
    ComicItemView(comic: Comic.dummyComic())
}
