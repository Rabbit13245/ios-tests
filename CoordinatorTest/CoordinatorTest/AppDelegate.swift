//
//  AppDelegate.swift
//  CoordinatorTest
//
//  Created by Dmitry Zaytcev on 03.08.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window:UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let navVc = UINavigationController()
        let coordinator = MainCoordinator(navigationController: navVc)
        coordinator.start()
        window?.rootViewController = navVc
        window?.makeKeyAndVisible()
        
        return true
    }
}

