//
//  CharacterProfileView.swift
//  SwiftyMarvel
//
//  Created by Farido on 21/10/2025.
//

import SwiftUI

struct CharacterProfileView: View {

    // MARK: - Properties -

    let character: Character

    // MARK: - States -
    @StateObject var viewModel = Resolver.shared.resolve(CharacterProfileViewModel.self)

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack(alignment: .topLeading) {
                    coverImageView
                    contentView
                }//: ZStack
            }//: ScrollView
            .scrollIndicators(.hidden)
            .navigationBarBackButtonHidden(true)
            .toolbarBackground(.hidden, for: .navigationBar)
            .ignoresSafeArea()
            .onAppear() {
                Task {
                    viewModel.checkFavorite(character: character)
                    await viewModel.loadComics(forCharacter: character.id ?? 0)
                }
            }
        }//: NavigationStack
    }

    // MARK: - View Sections -

    private var coverImageView: some View {
        CachedImageView(character.thumbnailURL)
            .aspectRatio(contentMode: .fill)
            .frame(
                height: 350,
                alignment: .center
            )
            .cornerRadius(15, corners: [.bottomLeft, .bottomRight])
    }

    private var contentView: some View {
        LazyVStack(alignment: .leading) {
            HStack {
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                }//: Button

                Spacer()

                Button {
                    viewModel.toggleFavorite(character: character)
                } label: {
                    Image(
                        systemName: viewModel.isFavorite ?
                        "heart.fill" : "heart"
                    )
                    .foregroundStyle(
                        viewModel.isFavorite ?
                            .red : .white
                    )
                    .font(.system(size: 20))
                }//: Button
                .padding([.leading, .trailing], 20)
            }//: HStack
            .padding([.top], 64)

            Spacer()
                .frame(height: 280)

            Text(character.name ?? "")
                .font(.system(.largeTitle, weight: .bold))
                .padding([.bottom], 10)

            Text(character.safeDescription)
                .font(.body)
                .padding([.bottom], 10)

            comicsSection

        }//: LazyVStack
        .padding([.leading, .bottom], 20)
    }

    private var comicsSection: some View {
        BaseStateView(viewModel: viewModel) {
            VStack(alignment: .leading) {
                Text("comics".localized())
                    .font(.system(.title2, weight: .bold))
                    .padding([.bottom], 5)

                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(viewModel.comics) { item in
                            ComicItemView(comic: item)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CharacterProfileView(character: Character.dummyCharacter())
}
