//
//  CharactersRepository.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

protocol CharactersRepository {
    /// Get a list of characters from the Marvel API.
    ///
    /// - Parameters:
    ///    - offset: The requested offset (number of skipped results) of the call.
    ///    - searchKey: The requested string to search for.
    ///
    /// - Returns: A paginated list of characters.
    /// - Throws: An error of type `AppError`.
    /// - Note: The call is asynchronous.
    /// - Important: The offset should be a positive number.
    /// - SeeAlso: `AppError`
    func getCharacters(from offset: Int, by searchKey: String?) async -> Result<PaginatedResponse<Character>, AppError>
}
