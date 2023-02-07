//
//  SearchBookCoordinator.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

class SearchBookCoordinator: Coordinator {
    func start(books: [Book]) -> UIViewController {
        let searchBookVC = SearchBookCoordinator.instantiateViewController() as! SearchBookViewController
        rootViewController = UINavigationController(rootViewController: searchBookVC)
        searchBookVC.dataStore = dataStore
        searchBookVC.rootViewController = rootViewController
        
        return rootViewController
    }
    
    var rootViewController: UINavigationController!
    var dataStore: DataStore
    
    init(dataStore: DataStore) {
        self.dataStore = dataStore
    }
    
    func start() -> UIViewController {
        let searchBookVC = SearchBookCoordinator.instantiateViewController() as! SearchBookViewController
        rootViewController = UINavigationController(rootViewController: searchBookVC)
        searchBookVC.dataStore = dataStore
        searchBookVC.rootViewController = rootViewController
        
        return rootViewController
    }
}

extension SearchBookCoordinator : StoryboardInitializable {
    static var storyboardName: UIStoryboard.Storyboard {
        return .main
    }
}
