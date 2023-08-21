//
//  CharacterCollectionCellViewModel.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import Foundation

protocol CollectionViewCellViewModelType: AnyObject {
    ///Картинка персонажа
    var characterImage: String { get }
    
    ///Имя персонажа
    var characterName: String { get }
}

class CharacterCollectionCellViewModel: CollectionViewCellViewModelType {
    //MARK: - Private properties
    private var character : Result
    
    //MARK: - Public properties
    var characterImage: String {
        return character.image
    }
    
    var characterName: String {
        return character.name
    }
    
    //MARK: - Initializers
    init(character: Result) {
        self.character = character
    }
}
