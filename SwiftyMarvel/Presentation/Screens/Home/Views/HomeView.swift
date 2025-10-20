//
//  HomeView.swift
//  SwiftyMarvel
//
//  Created by Farido on 20/10/2025.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = Resolver.shared.resolve(HomeViewModel.self)

    var body: some View {
        NavigationStack {
            ZStack {
                BaseStateView(viewModel: viewModel) {
                    content
                        .padding([.leading, .trailing], 15)
                        .navigationTitle("swiftyMarvel".localized())
                        .searchable(text: $viewModel.searchText,
                                    prompt: "typeCharacterName".localized())
                        .onChange(of: viewModel.debouncedSearchText) { _, _ in
                            Task {
                                await viewModel.searchCharacters()
                            }
                        }//: BaseStateView
                }//: ZStack
            }//: NavigationStack
            .refreshable {
                await viewModel.loadCharacters(form: 0)
            }
        }
    }

    var content: some View {
        CustomListView(items: viewModel.characters) { item in
            CharacterProfileView(character: item)
        } itemView: { item in
            CharacterView(character: item)
                .task {
                    await viewModel
                        .loadMoreCharactersIfNeeded(currentItem: item)
                }
        }

    }
}

#Preview {
    HomeView()
}
