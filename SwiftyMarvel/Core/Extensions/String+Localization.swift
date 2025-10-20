//
//  String+Localization.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation

extension String {
    /// Localizes the string using the `Localizable.strings` file.
    func localized(with comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
