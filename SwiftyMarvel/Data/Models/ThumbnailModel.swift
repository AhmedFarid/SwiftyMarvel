//
//  ThumbnailModel.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

// MARK: - ThumbnailModel -

struct ThumbnailModel {
    let path: String?
    let thumbnailExtension: String?

    var url: URL? {
        guard let path, let ext = thumbnailExtension else { return nil }
        return URL(string: "\(path).\(ext)")
    }

    init(
        path: String? = nil,
        thumbnailExtension: String? = nil
    ) {
        self.path = path
        self.thumbnailExtension = thumbnailExtension
    }

}

// MARK: - ThumbnailModel + Codable -

extension ThumbnailModel: Codable {
    enum CodingKeys: String, CodingKey {
        case path
        case thumbnailExtension = "extension"
    }
}
