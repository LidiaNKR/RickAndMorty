//
//  SceneDelegate.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.overrideUserInterfaceStyle = .dark
        let layout = UICollectionViewFlowLayout()
        let charactersCollectionViewController = CharactersCollectionViewController(collectionViewLayout: layout)
        let navBar = UINavigationController(rootViewController: charactersCollectionViewController)
        window?.rootViewController = navBar
        window?.makeKeyAndVisible()
    }
}

