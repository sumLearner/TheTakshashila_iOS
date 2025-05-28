//
//  TheEmptyLibraryViewModel.swift
//  TheTakshashila
//
//  Created by Sumadhura Rao on 28/05/25.
//

import Foundation

extension TheEmptyLibraryView {
    @Observable
    class TheEmptyLibraryViewModel {
        var homeVM: HomeViewModel
        
        init(homeVM: HomeViewModel) {
            self.homeVM = homeVM
        }
        
    }
}
