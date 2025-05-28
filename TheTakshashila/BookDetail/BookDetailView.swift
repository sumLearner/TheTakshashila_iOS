//
//  BookDetailView.swift
//  TheTakshashila
//
//  Created by Sumadhura Rao on 28/05/25.
//

import SwiftUI

struct BookDetailView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Text("Enter the book detail!")
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    BookDetailView()
}
