//
//  FirstLogic.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 03.06.2021.
//

import SwiftUI

final class FirstLogic: ObservableObject {
    
    private let service: CalculationService
    @Published var count: Int = 0
    
    init(count: Int, service: CalculationService) {
        self.service = service
        self.count = count
    }
    
    func onPress() {
        service.add(count: count) { [weak self] result in
            self?.count = result
        }
    }
}
