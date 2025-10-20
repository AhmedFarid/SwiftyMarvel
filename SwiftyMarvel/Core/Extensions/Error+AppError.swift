//
//  Error+AppError.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

extension Error {
    /// Converts any error to an `AppError` object.
    var toAppError: AppError {
        if self is NetworkError {
            return .networkError("errorWhileFetchingData")
        }
        return AppError.unknownError("unknownError")
    }
}
