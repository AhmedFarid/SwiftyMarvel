//
//  GetCharactersUC.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

// MARK: - Parameters -

struct GetCharactersParams {
    let offset: Int
    let searchKey: String?
}

// MARK: - Protocol -

protocol GetCharactersUC {
    /// Get a list of characters from the Marvel API.
    func execute(with params: GetCharactersParams) async -> Result<PaginatedResponse<Character>, AppError>
}

// MARK: - Implementation -

class DefaultGetCharactersUC: GetCharactersUC {
    private var repository: CharactersRepository

    init(repository: CharactersRepository) {
        self.repository = repository
    }

    func execute(with params: GetCharactersParams) async -> Result<PaginatedResponse<Character>, AppError> {
        return await repository.getCharacters(from: params.offset, by: params.searchKey)
    }

}
