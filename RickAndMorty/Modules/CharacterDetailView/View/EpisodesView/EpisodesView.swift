//
//  EpisodesView.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct EpisodesView: View {
    
    @ObservedObject var viewModel = CharacterDetailViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            TitleText(text: "Episodes")
            ForEach(viewModel.episodes)  { episode in
                EpisodesCell(
                    name: episode.name,
                    episode: episode.episode,
                    date: episode.date
                )
                .frame(maxWidth: .infinity)
            }
        }
        .frame(width: 327)
        .frame(maxWidth: .infinity)
        .task {
            viewModel.fetchEpisodes()
        }
    }
}
