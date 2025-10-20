//
//  UINavigationController+UIGestureRecognizerDelegate.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import SwiftUI

extension UINavigationController: UIGestureRecognizerDelegate {
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
