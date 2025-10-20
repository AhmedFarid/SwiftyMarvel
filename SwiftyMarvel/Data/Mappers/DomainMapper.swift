//
//  DomainMapper.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

protocol DomainMapper {
    associatedtype EntityType
    func toDomain() -> EntityType
}
