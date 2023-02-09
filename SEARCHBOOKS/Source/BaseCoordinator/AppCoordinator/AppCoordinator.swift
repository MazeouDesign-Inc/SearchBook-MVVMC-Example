//
//  AppCoordinator.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

final class AppCoordinator : Coordinator{
    func start(books: [Book]) -> UIViewController {
        let mainVC = searchCoordinator.start()
        self.window?.rootViewController = mainVC
        self.window?.makeKeyAndVisible()
        
        return mainVC
    }
    
    
    private var window : UIWindow?
    
   lazy var dataStore : DataStore = {
        return DataStoreImp()
    }()
    
    init(window : UIWindow) {
        self.window = window
    }
    var listCoordinator : BookListCoordinator!
    var searchCoordinator: SearchBookCoordinator!
    
    @discardableResult
    func start()->UIViewController{
        searchCoordinator = SearchBookCoordinator(dataStore: dataStore)
        let mainVC = searchCoordinator.start()
        self.window?.rootViewController = mainVC
        self.window?.makeKeyAndVisible()
        
        return mainVC
    }
}
