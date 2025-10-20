//
//  CharactersRequest.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

enum CharactersRequest: RequestProtocol {
    case getCharacters(offset: Int, searchKey: String?)
    var path: String {
        "/v1/public/characters"
    }

    var urlParams: [String : String?] {
        switch self {
        case .getCharacters(offset: let offset, searchKey: let searchKey):
            var params = ["offset": "\(offset)", "limit": "\(APIConstants.defaultLimit)"]
            if let searchKey {
                params["nameStartsWith"] = searchKey
            }
            return params
        }
    }
    var requestType: RequestType {
        .GET
    }
}
