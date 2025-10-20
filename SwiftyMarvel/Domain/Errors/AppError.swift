//
//  AppError.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

enum AppError: Error, Equatable {
    case networkError(String)
    case parsingError(String)
    case serverError(String)
    case unknownError(String)
    case localDataFetchError(String)
}
