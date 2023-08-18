//
//  RickAndMortyModel.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import Foundation

struct RickAndMorty: Decodable {
    let results: [Result]
}

struct Result: Decodable {
    let name: String
    let status: String
    let species: String
    let gender: String
    let origin: Location
    let image: String
    let episode: [String]
    let url: String
}

struct Location: Decodable {
    let name: String
}

struct Episode: Decodable {
    let name: String
    let date: String
    let episode: String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case date = "air_date"
        case episode = "episode"
    }
}


