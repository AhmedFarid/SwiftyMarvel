//
//  ComicModel+DomainMapper.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

extension ComicModel: DomainMapper {

    func toDomain() -> Comic {
        return Comic(
            id: id,
            title: title,
            description: description,
            modified: modified,
            thumbnailURL: thumbnail?.url
        )
    }
}
