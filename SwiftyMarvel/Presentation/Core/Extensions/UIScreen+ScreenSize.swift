//
//  UIScreen+ScreenSize.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import SwiftUI

extension UIScreen {

    static var current: UIScreen? {
        return UIApplication.shared.connectedScenes
            .compactMap { ($0 as? UIWindowScene)?.screen }
            .first
    }
    
    static let screenWidth = current?.bounds.width ?? 0
    static let screenHeight = current?.bounds.height ?? 0
    static let screenSize = current?.bounds.size
}
