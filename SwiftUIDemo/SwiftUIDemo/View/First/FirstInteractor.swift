//
//  FirstInteractor.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 04.06.2021.
//

import Foundation

final class FirstInteractor {
    
    private let service: CalculationService
    private let presenter: FirstPresenter
    private var count = 3
    
    init(service: CalculationService, presenter: FirstPresenter) {
        self.service = service
        self.presenter = presenter
    }
    
    func onLoad() {
        self.presenter.update(count: count)
    }
    
    func onPress() {
        if count > 0 {
            service.add(count: count) { [weak self] result in
                guard let self = self else { return }
                self.count = result
                self.presenter.update(count: result)
            }
        } else {
            presenter.nextFlow()
        }
    }
    
}
