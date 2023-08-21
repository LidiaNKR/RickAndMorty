//
//  MainInfoView.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct MainInfoView: View {

    @ObservedObject var viewModel = CharacterDetailViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 24) {
            CharacterImage(urlString: viewModel.characterImage)
            VStack(alignment: .center, spacing: 8) {
                Text(viewModel.characterName)
                    .font(
                    Font.custom("Gilroy", size: 22)
                    .weight(.bold)
                    )
                    .kerning(0.32)
                    .foregroundColor(.white)
                
                Text(viewModel.characterStatus)
                    .font(
                    Font.custom("Gilroy", size: 16)
                    .weight(.medium)
                    )
                    .foregroundColor(.green)
            }
        }
    }
}
