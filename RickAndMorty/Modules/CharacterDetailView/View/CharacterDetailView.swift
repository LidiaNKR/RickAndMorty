//
//  CharacterDetailView.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct CharacterDetailView: View {
    
    var viewModel: CharacterDetailViewModelType?
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack(alignment: .center, spacing: 24) {
                    MainInfoView()
                    
                    VStack(alignment: .center, spacing: 24) {
                        AliveView()
                        OriginView()
                        EpisodesView()
                    }
                }
            }
            .padding(.top)
        }
        .background(Color(uiColor: Constant.viewBackGroundColor))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView()
    }
}
