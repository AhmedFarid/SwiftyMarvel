//
//  ComicsRequest.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

enum ComicsRequest: RequestProtocol {
    case getComicsByCharacterId(characterId: Int, offset: Int)

    // MARK: - Path -

    var path: String {
        switch self {
        case .getComicsByCharacterId(characterId: let characterId, offset: _):
            return "/v1/public/characters/\(characterId)/comics"
        }
    }

    // MARK: - URL Params -

    var urlParams: [String : String?] {
        switch self {
        case .getComicsByCharacterId(characterId: _, offset: let offset):
            return ["offset": "\(offset)",
                    "limit": "\(APIConstants.defaultLimit)"]
        }
    }

    var requestType: RequestType {
        .GET
    }
}
