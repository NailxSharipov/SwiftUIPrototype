//
//  FirstController.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 02.06.2021.
//

import SwiftUI

final class FirstController<Content: View>: UIHostingController<Content>, Coordinatable {

    var coordinatorHandler: CoordinatorHandler?

    private let interactor: FirstInteractor
    
    init(rootView: Content, interactor: FirstInteractor) {
        self.interactor = interactor
        super.init(rootView: rootView)
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) { nil }

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.onLoad()
    }
}

extension FirstController: FirstPresenterDelegate {

    func openNextFlow() {
        self.open(route: .second)
    }
}
