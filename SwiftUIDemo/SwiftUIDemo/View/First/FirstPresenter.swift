//
//  FirstPresenter.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 04.06.2021.
//

import SwiftUI

protocol FirstPresenterDelegate: AnyObject {
    
    func openNextFlow()
    
}

final class FirstPresenter: ObservableObject {
    
    struct ViewModel {
        var buttonText: String
    }
    
    @Published var viewModel: ViewModel
    weak var delegate: FirstPresenterDelegate?
    
    init() {
        self.viewModel = ViewModel(buttonText: "")
    }
    
    func update(count: Int) {
        if count == 0 {
            self.viewModel.buttonText = "Next flow"
        } else {
            self.viewModel.buttonText = "Press more times: \(count)"
        }
    }
    
    func nextFlow() {
        delegate?.openNextFlow()
    }
}
