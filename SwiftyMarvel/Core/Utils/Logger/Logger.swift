//
//  Logger.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation
import OSLog

extension Logger {
    private static var subsystem = Bundle.main.bundleIdentifier ?? "com.swiftymarvel.app"

    /// Logs related to the networking
    static let networking = Logger(subsystem: subsystem, category: "networking")

    /// Logs related to local data source errors and debugging
    static let localDataSource = Logger(subsystem: subsystem, category: "local data source")
}
