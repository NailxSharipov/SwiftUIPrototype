//
//  FirstLogic.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 03.06.2021.
//

import SwiftUI

final class FirstLogic: ObservableObject {
    
    struct ViewModel {
        var count: Int
    }
    
    private let service: CalculationService
    @Published var viewModel: ViewModel
    
    init(count: Int, service: CalculationService) {
        self.service = service
        self.viewModel = ViewModel(count: count)
    }
    
    func onPress() {
        service.add(count: viewModel.count) { [weak self] result in
            self?.viewModel.count = result
        }
    }
}
