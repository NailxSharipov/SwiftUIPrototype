//
//  FirstView.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 03.06.2021.
//

import SwiftUI

struct FirstView: View {

    @ObservedObject var logic: FirstLogic
    
    var body: some View {
        Color.white
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack {
                    Text("Count: \(logic.count)")
                    Button(action: logic.onPress) {
                        Text("Press Me")
                    }
                }
            )
    }
}
