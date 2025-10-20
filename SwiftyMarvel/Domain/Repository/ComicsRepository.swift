//
//  ComicsRepository.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

protocol ComicsRepository {

    /// Get a list of comics from the Marvel API.
    ///
    /// - Parameters:
    ///   - characterId: The requested character id.
    ///   - offset: The requested offset (number of skipped results) of the call.
    ///
    /// - Returns: A paginated list of comics.
    /// - Throws: An error of type `AppError`.
    func getComics(by characterId: Int, from offset: Int) async -> Result<PaginatedResponse<Comic>, AppError>
}
