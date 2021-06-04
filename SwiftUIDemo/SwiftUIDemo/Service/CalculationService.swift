//
//  CalculationService.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 03.06.2021.
//

import Foundation

final class CalculationService {
    
    func add(count: Int, callback: @escaping (Int) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            callback(count - 1)
        }
    }
}
