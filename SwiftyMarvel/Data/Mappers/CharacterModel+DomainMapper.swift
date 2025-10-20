//
//  CharacterModel+DomainMapper.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

// MARK: - CharacterModel -

extension CharacterModel: DomainMapper {
    func toDomain() -> Character {
        return Character(id: id,
                         name: name,
                         description: characterDescription,
                         modified: modified,
                         thumbnailURL: thumbnail?.url)
    }
}
