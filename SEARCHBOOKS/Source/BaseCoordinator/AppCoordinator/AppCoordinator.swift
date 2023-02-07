//
//  AppCoordinator.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

final class AppCoordinator: Coordinator {
    private var window : UIWindow?
    
    init(window : UIWindow) {
        self.window = window
    }
    var searchCoordinator: SearchBookCoordinator!
    
    @discardableResult
    func start()->UIViewController{
        searchCoordinator = SearchBookCoordinator()
        let mainVC = searchCoordinator.start()
        self.window?.rootViewController = mainVC
        self.window?.makeKeyAndVisible()
        
        return mainVC
    }
}
