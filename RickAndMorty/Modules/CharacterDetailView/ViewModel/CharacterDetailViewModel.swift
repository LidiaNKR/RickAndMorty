//
//  CharacterDetailViewModel.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import Foundation

protocol CharacterDetailViewModelType {
    var characterImage: String { get }
    var characterName: String { get }
//    var age: Box<String?> { get }
}


class CharacterDetailViewModel: CharacterDetailViewModelType {
    
    private var character: Result
    
    var characterImage: String {
        return character.image
    }
    
    var characterName: String {
        print(character.name)
        return character.name
    }
//    var description: String {
//        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) old!")
//    }
//
//    var age: Box<String?> = Box(nil)

    init(character: Result) {
        self.character = character
    }
}
