//
//  GetFavoritesUC.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

// MARK: - Protocol -

protocol GetFavoritesUC {
    func execute() -> Result<[Character], AppError>
}

// MARK: - Implementation -

class DefaultGetFavoritesUC: GetFavoritesUC {
    private let favoritesRepository: FavoritesRepository

    init(favoritesRepository: FavoritesRepository) {
        self.favoritesRepository = favoritesRepository
    }

    func execute() -> Result<[Character], AppError> {
        favoritesRepository.getFavorites()
    }
}
