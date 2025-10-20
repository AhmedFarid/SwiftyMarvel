//
//  MessageView.swift
//  SwiftyMarvel
//
//  Created by Farido on 20/10/2025.
//

import SwiftUI

struct MessageView: View {
    let message: String

    var body: some View {
        VStack {
            Spacer()
            Text(message)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
            Spacer()
        }
    }
}

#Preview {
    MessageView(message: "Hello!")
}
