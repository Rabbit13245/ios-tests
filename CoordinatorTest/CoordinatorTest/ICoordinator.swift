//
//  ICoordinator.swift
//  CoordinatorTest
//
//  Created by Dmitry Zaytcev on 03.08.2021.
//

import UIKit

protocol ICoordinator {
    var childCoordinators: [ICoordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
