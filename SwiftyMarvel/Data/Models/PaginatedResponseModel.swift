//
//  PaginatedResponseModel.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

struct PaginatedResponseModel<T>: Codable  where T: Codable, T: DomainMapper {
    let offset, limit, total, count: Int?
    let results: [T]?
}
