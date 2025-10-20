//
//  ViewModel.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Combine

@MainActor
class ViewModel: ObservableObject {
    @Published var state: ViewState = .initial
}

enum ViewState: Equatable {
    case initial, loading, error(String), success, empty
}
