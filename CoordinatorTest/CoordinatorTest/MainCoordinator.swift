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
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func openCreateAccount() {
        let vc = CreateAccountViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openBuy() {
        let vc = BuyViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
