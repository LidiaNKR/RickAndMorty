//
//  CharacterDetailViewModel.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import Foundation

protocol CharacterDetailViewModelType {}

final class CharacterDetailViewModel: ObservableObject, CharacterDetailViewModelType {

    private var selectedIndexPath: IndexPath?
    private var dataFetcherService: DataFetcherServiceProtocol? = DataFetcherService()
    private let imageNetworkService: ImageNetworkServiceProtocol = ImageNetworkService()
    
    @Published var character: Result
    @Published var episodes: [Episode]
    
    //MainInfo view
    var characterImage: String {
        return character.image
    }
    
    var characterName: String {
        return character.name
    }
    
    var characterStatus: String {
        return character.status
    }
    
    //Info view
    var infoSpecies: String {
        return character.species
    }
    
    var infoType: String? {
        if character.type != "" {
            return character.type?.replacingOccurrences(
                of: #"\(.*\)"#,
                with: "",
                options: .regularExpression
            )
        } else {
            return "None"
        }
    }
    
    var infoGender: String {
        return character.gender
    }
    
    //Origin view
    var originEarth: String {
        return character.origin.name.replacingOccurrences(
            of: #"\(.*\)"#,
            with: "",
            options: .regularExpression
        )
    }
    
    //Episodes view
    func fetchEpisodes() {
            character.episode.forEach { episode in
                guard let episodeURL = URL(string: episode) else { return }
                dataFetcherService?.fetchEpisode(
                    from: episodeURL,
                    completion: { episode in
                        guard let episode = episode else { return }
                        self.episodes.append(episode)
                    }
                )
            }
    }
    
    //MARK: - Initializers
    init(character: Result? = nil) {
        self.character = character!
        self.episodes = []
    }
}
