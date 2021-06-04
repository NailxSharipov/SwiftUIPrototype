//
//  SecondInteractor.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 04.06.2021.
//


final class SecondInteractor {
    
    private let presenter: SecondPresenter
    
    init(presenter: SecondPresenter) {
        self.presenter = presenter
    }

    func onPress() {
        presenter.returnFlow()
    }
    
}
