//
//  MainFactory.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 03.06.2021.
//

import SwiftUI

final class MainFactory {

    func createFirst() -> UIViewController {
        let logic = FirstLogic(count: 0, service: ServiceLayer.instance.calculationService)
        return FirstController(rootView: FirstView(logic: logic))
    }

}
