//
//  BookDetailView.swift
//  TheTakshashila
//
//  Created by Sumadhura Rao on 28/05/25.
//

import SwiftUI

struct BookDetailEntryView: View {
    @State var name: String = ""
    @State var author: String = ""
    @State var price: String = ""
    @State var description: String = ""
    @State var image: Data?
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Enter the book detail!")
                    .foregroundStyle(.gray)
                    .bold()
                    .font(.title2)
                
                BookInfoTextView(text: $name, placeholder: "Name of the Book")
                
                BookInfoTextView(text: $author, placeholder: "Name of the Author")
                
                BookInfoTextView(text: $price, placeholder: "Price of the book")
                
                BookInfoTextView(text: $description, placeholder: "Description of the book")
                
                Button("Add the Book") {
                    //ToDo: Add book to the Library.
                    print(name, author, price, description)
                }
                .frame(height: 50)
                .padding(.horizontal, 40)
                .foregroundColor(.black)
                .background(Color.white)
                .border(Color.white, width: 2)
                .cornerRadius(8)
            }
        }
    }
}

#Preview {
    BookDetailEntryView()
}
