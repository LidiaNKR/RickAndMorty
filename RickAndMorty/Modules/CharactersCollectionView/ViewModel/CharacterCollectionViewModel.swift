//
//  CharacterCollectionViewModel.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import Foundation

protocol CollectionViewViewModelType {
    func fetchData(completionHandler: @escaping () -> ())
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> CollectionViewCellViewModelType?
}

final class CharacterCollectionViewModel: CollectionViewViewModelType {
    
    // MARK: - Private properties
    private var selectedIndexPath: IndexPath?
    private var dataFetcherService: DataFetcherServiceProtocol? = DataFetcherService()
    private var result = [Result]()
    
    // MARK: - Public methods
    func fetchData(completionHandler: @escaping () -> ()) {
        dataFetcherService?.fetchRickAndMorty { [weak self] data in
            guard let self = self else { return }
            guard let data = data else { return }
            result = data.results
            DispatchQueue.main.async {
                completionHandler()
            }
        }
    }
    
    func numberOfRows() -> Int {
        return result.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> CollectionViewCellViewModelType? {
        let character = result[indexPath.item]
        return CharacterCollectionCellViewModel(character: character)
    }
}
