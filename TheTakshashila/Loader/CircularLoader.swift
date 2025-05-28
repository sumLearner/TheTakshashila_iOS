//
//  CircularLoader.swift
//  TheTakshashila
//
//  Created by Sumadhura Rao on 28/05/25.
//

import SwiftUI

struct CircularLoader: View {
    @State private var isLoading = false
    
    init(isLoading: Bool = false) {
        self.isLoading = isLoading
    }
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round))
                .opacity(0.25)
            
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round))
                .opacity(isLoading ? 1 : 0)
        }
    }
}

#Preview {
    CircularLoader()
}
