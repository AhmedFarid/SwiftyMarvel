//
//  ToggleFavoriteUC.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

// MARK: - Protocol -

protocol ToggleFavoriteUC {
    func execute(character: Character)
}

// MARK: - Implementation -

class DefaultToggleFavoriteUC: ToggleFavoriteUC {
    private let favoritesRepository: FavoritesRepository

    init(favoritesRepository: FavoritesRepository) {
        self.favoritesRepository = favoritesRepository
    }

    func execute(character: Character) {
        if favoritesRepository.isFavorite(character: character) {
            favoritesRepository.removeFavorite(character: character)
        } else {
            favoritesRepository.addFavorite(character: character)
        }
    }
}
