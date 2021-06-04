//
//  SecondController.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 04.06.2021.
//

import SwiftUI

final class SecondController<Content: View>: UIHostingController<Content>, Coordinatable {
    var coordinatorHandler: CoordinatorHandler?
}

extension SecondController: SecondPresenterDelegate {
    func doReturnFlow() {
        self.close(controller: self)
    }
}
