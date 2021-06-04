//
//  MainFactory.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 03.06.2021.
//

import SwiftUI

final class MainFactory {

    func createFirst() -> Coordinatable {
        let presenter = FirstPresenter()
        let interactor = FirstInteractor(service: ServiceLayer.instance.calculationService, presenter: presenter)
        let controller = FirstController(rootView: FirstView(interactor: interactor, presenter: presenter), interactor: interactor)
        
        presenter.delegate = controller

        return controller
    }
    
    func createSecond() -> Coordinatable {
        let presenter = SecondPresenter()
        let interactor = SecondInteractor(presenter: presenter)
        let controller = SecondController(rootView: SecondView(interactor: interactor, presenter: presenter))
        
        presenter.delegate = controller

        return controller
    }

}
