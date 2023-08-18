//
//  Text.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 19.08.2023.
//

import SwiftUI

struct NameText: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(
                Font.custom("Gilroy", size: 16)
                    .weight(.medium)
            )
            .foregroundColor(Color(red: 0.77, green: 0.79, blue: 0.81))
    }
}

struct DescriptionText: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(
                Font.custom("Gilroy", size: 16)
                    .weight(.medium)
            )
            .foregroundColor(.white)
    }
}
