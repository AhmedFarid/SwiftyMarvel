//
//  RequestManager.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

// MARK: - Request Manget Protocol -

protocol RequestManager {
    var networkManger: NetworkManager { get }
    var parser: DataParser { get }
    func makeRequest<T: Decodable>(with requestData: RequestProtocol) async throws -> T
}

// MARK: - Default Request Manger

class DefaultRequestManager: RequestManager {
    let networkManger: NetworkManager

    init(networkManger: NetworkManager) {
        self.networkManger = networkManger
    }

    /// Makes a network request.
    ///
    /// - Parameter requestData: The request data to be sent.
    /// - Returns: The response data decoded to the specified type.
    /// - Throws: An error if the request fails.
    /// - Note: This method is asynchronous.
    /// - Important: The request data should conform to `RequestProtocol`.
    /// - SeeAlso: `RequestProtocol`
    /// - SeeAlso: `NetworkError`
    func makeRequest<T>(with requestData: any RequestProtocol) async throws -> T where T : Decodable {
        let data = try await networkManger.makeRequest(with: requestData)
        let decoded: T = try parser.parse(data: data)
        return decoded
    }
}

// MARK: - Returns Data parser -

extension RequestManager {
    var parser: DataParser {
        return DefaultDataParser()
    }
}
