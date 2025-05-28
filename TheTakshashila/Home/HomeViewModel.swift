//
//  HomeViewModel.swift
//  TheTakshashila
//
//  Created by Sumadhura Rao on 28/05/25.
//

import Foundation
import Combine
import SwiftUI

//ViewModel For Home.
//extension HomeView {
    @Observable
    class HomeViewModel {
        var title: String = "Home"
        var isLoading: Bool = false

        var books: [Book]?
        
        //Computed property Book Count.
        //In case of home library it may not be changing frequently.
        //In case of a book shop, it might change frequently.
        var bookCount: Int {
            books?.count ?? 0
        }
        
        //Computing Favourites.
        //Currently we are not maintaining network calls.
        //In this situation, reducing database interaction seems more efficient.
        //If network call is used, these can be fetched from API instead of computing here.
        var favourites: [Book]? {
            if let books = self.books {
                var favourites = [Book]()
                for book in books {
                    if book.favourite {
                        favourites.append(book)
                    }
                }
                return favourites
            } else {
                return nil
            }
        }
        
        //Computing Reading List.
        //Currently we are not maintaining network calls.
        //In this situation, reducing database interaction seems more efficient.
        //If network call is used, these can be fetched from API instead of computing here.
        var readinList: [Book]? {
            if let books = self.books {
                var readinList = [Book]()
                for book in books {
                    if book.readingStatus {
                        readinList.append(book)
                    }
                }
                return readinList
            } else {
                return nil
            }
        }
    }
//}
