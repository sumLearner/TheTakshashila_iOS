//
//  HomeView.swift
//  TheTakshashila
//
//  Created by Sumadhura Rao on 28/05/25.
//

import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                if viewModel.isLoading {
                    //Show Loader
                    Circle()
                        .animation(.default, value: 1)
                } else {
                    if viewModel.bookCount > 0 {
                        //Show Home Page.
                    } else {
                        //Show Empty Library Page.
                        TheEmptyLibraryView(homeVM: viewModel)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
