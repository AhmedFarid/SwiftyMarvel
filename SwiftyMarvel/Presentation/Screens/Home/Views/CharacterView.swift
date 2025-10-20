//
//  CharacterView.swift
//  SwiftyMarvel
//
//  Created by Farido on 20/10/2025.
//

import SwiftUI

struct CharacterView: View {
    // MARK: Properties -

    let character: Character

    var body: some View {
        ZStack(alignment: .bottom) {
            CachedImageView(character.thumbnailURL)
                .aspectRatio(2/1, contentMode: .fit)
                .cornerRadius(15)
                .frame(
                    alignment: .center
                )

            ZStack {
                VisualEffectView(effect: UIBlurEffect(style: .dark))
                    .frame(height: 50)
                    .cornerRadius(15, corners: [.bottomLeft, .bottomRight])

                Text(character.name ?? "")
                    .font(.body)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }//: ZStak
        }//: ZStak
    }
}

#Preview {
    CharacterView(character: Character.dummyCharacter())
}
