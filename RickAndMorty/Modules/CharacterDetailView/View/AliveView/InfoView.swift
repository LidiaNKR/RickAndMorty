//
//  InfoView.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct InfoView: View {

    @ObservedObject var viewModel = CharacterDetailViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            TitleText(text: "Info")
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    NameText(text: "Species:")
                    Spacer()
                    DescriptionText(text: viewModel.infoSpecies)
                }
                HStack {
                    NameText(text: "Type:")
                    Spacer()
                    DescriptionText(text: viewModel.infoType ?? "")
                }
                HStack {
                    NameText(text: "Gender:")
                    Spacer()
                    DescriptionText(text: viewModel.infoGender)
                }
            }
            .padding([.leading, .trailing], 16)
            .frame(width: 327, height: 124)
            .background(Color(uiColor: Constant.cellBackGroundColor))
            .cornerRadius(Constant.cornerRadiusOfCell)
        }
    }
}
