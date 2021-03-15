//
//  SceneDelegate.swift
//  MVVMRX
//
//  Created by Andoni Da silva on 10/3/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        
        appCoordinator = AppCoordinator(window: window)
        appCoordinator?.start()
    }

}

