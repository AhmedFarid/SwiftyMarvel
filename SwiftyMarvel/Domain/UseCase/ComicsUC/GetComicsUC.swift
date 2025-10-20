//
//  GetComicsUC.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

// MARK: - Parameters -

struct GetComicsParams {
    let offset: Int
    let characterID: Int
}

// MARK: - Portocol -

protocol GetComicsUC {

    /// Get a list of comics from the Marvel API.
    func execute(with params: GetComicsParams) async -> Result<PaginatedResponse<Comic>, AppError>
}

// MARK: - Implementation -

class DefaultGetComicsUC: GetComicsUC {
    private var repository: ComicsRepository

    init(repository: ComicsRepository) {
        self.repository = repository
    }

    func execute(with params: GetComicsParams) async -> Result<PaginatedResponse<Comic>, AppError> {
        return await repository.getComics(by: params.characterID, from: params.offset)
    }
}
