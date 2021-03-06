//
//  FirstView.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 03.06.2021.
//

import SwiftUI

struct FirstView: View {

    let interactor: FirstInteractor
    @ObservedObject var presenter: FirstPresenter

    var body: some View {
        Color(red: 0.7, green: 1, blue: 0.7, opacity: 1)
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
