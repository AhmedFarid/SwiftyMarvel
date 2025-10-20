//
//  CharactersDataSource.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

typealias CharactersResponse = BaseResponseModel<PaginatedResponseModel<CharacterModel>>

// MARK: - Protocol -

protocol CharactersDataSource {
    func getCharacters(from offset: Int, by searchKey: String?) async throws -> PaginatedResponseModel<CharacterModel>
}
// MARK: - Implementation -

class DefaultCharactersDataSource: CharactersDataSource {
    private let requestManger: RequestManager

    init(requestManger: RequestManager) {
        self.requestManger = requestManger
    }

    func getCharacters(from offset: Int, by searchKey: String?) async throws -> PaginatedResponseModel<CharacterModel> {
        let request = CharactersRequest.getCharacters(offset: offset, searchKey: searchKey)
        let response: CharactersResponse = try await requestManger.makeRequest(with: request)
        return response.data
    }
}
