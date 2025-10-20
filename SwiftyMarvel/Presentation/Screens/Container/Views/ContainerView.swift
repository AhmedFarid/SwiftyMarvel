//
//  ContainerView.swift
//  SwiftyMarvel
//
//  Created by Farido on 20/10/2025.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
        }
    }
}

#Preview {
    ContainerView()
}
