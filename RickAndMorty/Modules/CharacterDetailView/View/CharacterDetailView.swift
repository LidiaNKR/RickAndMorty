//
//  CharacterDetailView.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct CharacterDetailView: View {
    
    weak var navigationController: UINavigationController?
    var viewModel: CharacterDetailViewModelType?
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                NavigationBar(navigationController: navigationController)
                    .padding([.leading, .trailing], 0)
                ScrollView {
                    VStack(alignment: .center, spacing: 24) {
                        MainInfoView(viewModel: viewModel as! CharacterDetailViewModel)
                        VStack(alignment: .center, spacing: 24) {
                            InfoView(viewModel: viewModel as! CharacterDetailViewModel)
                            OriginView(viewModel: viewModel as! CharacterDetailViewModel)
                            EpisodesView(viewModel: viewModel as! CharacterDetailViewModel)
                        }
                    }
                }
                .padding(.top)
            }
        }
        .background(Color(uiColor: Constant.viewBackGroundColor))
        .navigationBarHidden(true)
    }
}
