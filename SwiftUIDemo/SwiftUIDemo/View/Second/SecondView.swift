//
//  SecondView.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 04.06.2021.
//

import SwiftUI

struct SecondView: View {

    let interactor: SecondInteractor
    @ObservedObject var presenter: SecondPresenter

    var body: some View {
        Color(red: 1, green: 1, blue: 0.7, opacity: 1)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack {
                    Button(action: interactor.onPress) {
                        Text(presenter.viewModel.buttonText)
                    }
                }
            )
    }
}
