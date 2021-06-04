//
//  Coordinatable.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 04.06.2021.
//

import UIKit

class Coordinator {
    
    private unowned let router: UINavigationController
    
    init(router: UINavigationController) {
        self.router = router
    }
    
    func open(route: Route) {
        
    }
    
    func close(controller: Coordinatable) {
        guard let index = router.viewControllers.firstIndex(where: { $0 == controller }), index > 0 else {
            return
        }
        router.popToViewController(router.viewControllers[index - 1], animated: true)
    }
    
    func push(controller: Coordinatable) {
        controller.coordinatorHandler = CoordinatorHandler(coordinator: self, onDeinit: {})
        router.pushViewController(controller, animated: true)
    }
}

class CoordinatorHandler {
    
    private let onDeinit: () -> ()
    public let coordinator: Coordinator

    init(coordinator: Coordinator, onDeinit: @escaping () -> ()) {
        self.coordinator = coordinator
        self.onDeinit = onDeinit
    }
    
    deinit {
        self.onDeinit()
    }
}

protocol Coordinatable where Self: UIViewController {
    var coordinatorHandler: CoordinatorHandler? { get set }
    var coordinator: Coordinator? { get }
    func open(route: Route)
    func close(controller: Coordinatable)
}

extension Coordinatable {
    var coordinator: Coordinator? { coordinatorHandler?.coordinator }
    func open(route: Route) {
        coordinator?.open(route: route)
    }
    func close(controller: Coordinatable) {
        coordinator?.close(controller: controller)
    }
}
