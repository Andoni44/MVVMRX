//
//  AppCoordinator.swift
//  MVVMRX
//
//  Created by Andoni Da silva on 13/3/21.
//

import UIKit

final class AppCoordinator {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let vc = ViewController.instantiate(viewModel: RestaurantsListViewModel())
        let navController = UINavigationController(rootViewController: vc)
        window.rootViewController = navController
        window.makeKeyAndVisible()
    }
}
