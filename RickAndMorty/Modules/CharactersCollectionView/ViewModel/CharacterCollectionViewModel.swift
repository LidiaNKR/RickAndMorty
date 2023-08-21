//
//  CharacterCollectionViewModel.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import Foundation

protocol CollectionViewViewModelType {
    ///Получение данных о персонажах из сети
    ///- Parameters:
    ///   - completion: Обработчик завершения, в который возвращается результат выполнения функции.
    func fetchData(completionHandler: @escaping () -> ())
    
    ///Получение количества элементов(персонажей)
    func numberOfItems() -> Int
    
    ///Получение ViewModel ячейки
    func cellViewModel(forIndexPath indexPath: IndexPath) -> CollectionViewCellViewModelType?
    
    ///Получение ViewModel для выбранной ячейки
    func viewModelForSelectedRow() -> CharacterDetailViewModel?
    
    ///Получение индекса выбранного элемента(персонажа)
    func selectItem(atIndexPath indexPath: IndexPath)
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

    func numberOfItems() -> Int {
        return result.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> CollectionViewCellViewModelType? {
        let character = result[indexPath.item]
        return CharacterCollectionCellViewModel(character: character)
    }
    
    func viewModelForSelectedRow() -> CharacterDetailViewModel? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return CharacterDetailViewModel(character: result[selectedIndexPath.item])
    }
    
    func selectItem(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
