//
//  SwiftyMarvelApp.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import SwiftUI
import CoreData

@main
struct SwiftyMarvelApp: App {

    init() {
        Resolver.shared.injectModules()
    }

    var body: some Scene {
        WindowGroup {
            ContainerView()
        }
    }
}
