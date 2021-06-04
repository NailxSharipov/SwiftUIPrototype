//
//  MainCoordinator.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 02.06.2021.
//

import UIKit

final class MainCoordinator: Coordinator {
    
    private let factory = MainFactory()
    
    func start() {
        let first = factory.createFirst()
        self.push(controller: first)
    }
    
    override func open(route: Route) {
        switch route {
        case .second:
            self.openSecond()
        }
    }
    
    private func openSecond() {
        let second = factory.createSecond()
        self.push(controller: second)
    }

}
