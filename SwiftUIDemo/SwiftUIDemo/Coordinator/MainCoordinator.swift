//
//  MainCoordinator.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 02.06.2021.
//

import UIKit

final class MainCoordinator {
    
    private let factory = MainFactory()
    private let router: UINavigationController
    
    init(router: RootNavigationController) {
        self.router = router
    }
    
    func start() {
        let first = factory.createFirst()
        router.pushViewController(first, animated: true)
    }

}
