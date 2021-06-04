//
//  SecondPresenter.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 04.06.2021.
//

import SwiftUI

protocol SecondPresenterDelegate: AnyObject {
    
    func doReturnFlow()
    
}

final class SecondPresenter: ObservableObject {
    
    struct ViewModel {
        var buttonText: String
    }
    
    @Published var viewModel: ViewModel
    weak var delegate: SecondPresenterDelegate?
    
    init() {
        self.viewModel = ViewModel(buttonText: "Return")
    }
    
    func returnFlow() {
        delegate?.doReturnFlow()
    }
}
