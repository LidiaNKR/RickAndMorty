//
//  TitleText.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct TitleText: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
            .foregroundColor(.white)
            .frame(alignment: .leading)
    }
}
