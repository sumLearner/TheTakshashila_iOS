//
//  BookScannerView.swift
//  TheTakshashila
//
//  Created by Sumadhura Rao on 28/05/25.
//

import SwiftUI

struct BookScannerView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Text("Let's start scanning the books!")
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    BookScannerView()
}
