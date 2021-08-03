//
//  MainCoordinator.swift
//  CoordinatorTest
//
//  Created by Dmitry Zaytcev on 03.08.2021.
//

import UIKit

class MainCoordinator: ICoordinator {
    var childCoordinators = [ICoordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let vc = ViewController()
        navigationController.pushViewController(vc, animated: false)
    }
}
