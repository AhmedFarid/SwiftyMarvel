//
//  ComicModel.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

// MARK: - ComicModel -

struct ComicModel: Codable {
    let id: Int?
    let title, description: String?
    let modified: String?
    let thumbnail: ThumbnailModel?
}
