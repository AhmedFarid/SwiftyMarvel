//
//  BaseResponse.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

struct BaseResponse<T> {
    let code: Int
    let status: String
    let data: T
}

