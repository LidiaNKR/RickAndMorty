//
//  DataFetcherService.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import Foundation

protocol DataFetcherServiceProtocol {
    /// Получение массива.
    /// - Parameters:
    ///   - completion: Обработчик завершения, в который возвращается результат выполнения функции.
    func fetchRickAndMorty(completion: @escaping (RickAndMorty?) -> Void)
    
    /// Получение персонажа.
    /// - Parameters:
    ///   - completion: Обработчик завершения, в который возвращается результат выполнения функции.
    func fetchResult(completion: @escaping (Result?) -> Void)
    
    /// Получение эпизодов.
    /// - Parameters:
    ///   - completion: Обработчик завершения, в который возвращается результат выполнения функции.
    func fetchEpisode(from url: URL, completion: @escaping (Episode?) -> Void)
}

final class DataFetcherService: DataFetcherServiceProtocol {
    var networkDataFetcher: NetworkDataFetcherProtocol
    
    init(networkDataFetcher: NetworkDataFetcherProtocol = NetworkDataFetcher()) {
        self.networkDataFetcher = networkDataFetcher
    }

    func fetchRickAndMorty(completion: @escaping (RickAndMorty?) -> Void) {
        guard let url = APIURL.characters else { return }
        networkDataFetcher.fetchGenericJSONData(url: url, completion: completion)
    }
    
    func fetchResult(completion: @escaping (Result?) -> Void) {
        guard let url = APIURL.characters else { return }
        networkDataFetcher.fetchGenericJSONData(url: url, completion: completion)
    }
    
    func fetchEpisode(from url: URL, completion: @escaping (Episode?) -> Void) {
        networkDataFetcher.fetchGenericJSONData(url: url, completion: completion)
    }
}
