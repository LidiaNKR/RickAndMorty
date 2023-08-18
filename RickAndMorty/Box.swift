//
//  Box.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import Foundation

class Box<T> {
    typealias Listener = (T) -> ()
    
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
}
