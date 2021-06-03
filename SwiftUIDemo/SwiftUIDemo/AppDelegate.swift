//
//  AppDelegate.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 02.06.2021.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.initWindow()
        
        return true
    }

    
    private func initWindow() {
        let router = RootNavigationController()
        let coordinator = MainCoordinator(router: router)
        coordinator.start()

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = router
        window?.makeKeyAndVisible()
    }

}

