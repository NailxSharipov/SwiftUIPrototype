//
//  RootNavController.swift
//  SwiftUIDemo
//
//  Created by Nail Sharipov on 02.06.2021.
//

import UIKit

final class RootNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
        self.navigationBar.tintColor = .black
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem()
        
        self.view.backgroundColor = UIColor(red: 1, green: 0.5, blue: 0.5, alpha: 1)
    }
    
}
