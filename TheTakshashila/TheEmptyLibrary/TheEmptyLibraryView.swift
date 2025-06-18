//
//  TheEmptyLibraryView.swift
//  TheTakshashila
//
//  Created by Sumadhura Rao on 28/05/25.
//

import SwiftUI

struct TheEmptyLibraryView: View {
    @State private var viewModel: TheEmptyLibraryViewModel
    
    init(homeVM: HomeViewModel) {
        viewModel = TheEmptyLibraryViewModel(homeVM: homeVM)
    }
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    Text("Let's start adding books to the shelves!")
                        .foregroundStyle(.gray)
                        .padding()
                    
                    NavigationLink {
                        
                        BookScannerView()
                        
                    } label: {
                        
                        Image(systemName: "camera")
                            .foregroundStyle(.gray)
                            .padding(16)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.gray, lineWidth: 2)
                            }
                    }
                    .padding()
                    
                    NavigationLink {
                        
                        BookDetailEntryView()
                        
                    } label: {
                        
                        Image(systemName: "keyboard")
                            .foregroundStyle(.gray)
                            .padding(16)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.gray, lineWidth: 2)
                            }
                        
                    }
                    .padding()
                }
                
                
            }
        }
    }
}
