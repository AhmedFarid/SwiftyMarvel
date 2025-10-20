//
//  ComicsDataSource.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

typealias ComicsResponse = BaseResponseModel<PaginatedResponseModel<ComicModel>>

// MARK: - Protocol -

protocol ComicsDataSource {
    func getComics(by characterId: Int, from offset: Int) async throws -> PaginatedResponseModel<ComicModel>
}

// MARK: - Implementation -

class DefaultComicsDataSource: ComicsDataSource {
    private let requestManger: RequestManager

    init(requestManger: RequestManager) {
        self.requestManger = requestManger
    }

    func getComics(by characterId: Int, from offset: Int) async throws -> PaginatedResponseModel<ComicModel> {
        let request = ComicsRequest.getComicsByCharacterId(characterId: characterId, offset: offset)
        let response: ComicsResponse = try await requestManger.makeRequest(with: request)
        return response.data
    }
}
