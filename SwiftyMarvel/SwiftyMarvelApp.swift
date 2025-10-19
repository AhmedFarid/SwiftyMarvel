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
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
