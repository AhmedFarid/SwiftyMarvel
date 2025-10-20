//
//  DataParser.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

protocol DataParser {
    func parse<T: Decodable>(data: Data) throws -> T
}

class DefaultDataParser: DataParser {
    private var jsonDecoder: JSONDecoder

    init(jsonDecoder: JSONDecoder = JSONDecoder()) {
        self.jsonDecoder = jsonDecoder
        self.jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
    }

    func parse<T>(data: Data) throws -> T where T : Decodable {
        return try jsonDecoder.decode(T.self, from: data)
    }
}
