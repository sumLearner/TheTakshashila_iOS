//
//  BookInfoTextView.swift
//  TheTakshashila
//
//  Created by Sumadhura Rao on 18/06/25.
//

import SwiftUI

struct BookInfoTextView: View {
    @Binding var text: String
    var placeholder: String = ""
    
    init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeholder = placeholder
    }
    
    var body: some View {
        TextField(placeholder,
                  text: $text)
            .textInputAutocapitalization(.never)
            .foregroundStyle(.white)
            .background(Color.clear)
            .padding(24)
            .border(.secondary)

    }
}
