//
//  UINavigationController.swift
//  EjNavigation Controller
//
//  Created by Alumno on 11/10/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController
{
    // MARK: Navigation Controller Life Cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setFont()
    }
    
    // MARK: Methods
    
    func setFont()
    {
        // set font for title
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Al-Jazeera-Arabic", size: 20)!]
        
        // set font for navigation bar buttons
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Al-Jazeera-Arabic", size: 15)!], for: UIControl.State.normal)
    }
}
