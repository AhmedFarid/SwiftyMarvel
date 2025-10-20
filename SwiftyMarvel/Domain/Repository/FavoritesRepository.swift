//
//  FavoritesRepository.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

protocol FavoritesRepository {

    /// Get all favorites characters form local storage
    func getFavorites() -> Result<[Character], AppError>

    /// Check if character is favorite or not
    func isFavorite(character: Character) -> Bool

    /// Add character to favorites
    func addFavorite(character: Character)

    /// Remove character from favorites
    func removeFavorite(character: Character)
}
