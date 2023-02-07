//
//  BookListCoordinator.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

class BookListCoordinator: Coordinator {
    var rootViewController: UINavigationController!
    var dataStore : DataStore?
    var detailViewCoordinator : BookDetailViewCoordinator!
    var isFavoriteBooksView: Bool = false
    
    init( dataStore : DataStore?) {
        self.dataStore = dataStore
    }
    
    func start() -> UIViewController {return rootViewController}
    
    func start(books: [Book])->UIViewController{
        
        let listVC = BookListCoordinator.instantiateViewController() as! BookListViewController
        rootViewController = UINavigationController(rootViewController: listVC)
        guard let dataStore = dataStore else { return rootViewController }
//        let listVC = BookListCoordinator.instantiateViewController() as! BookListViewController
//        rootViewController = UINavigationController(rootViewController: listVC)
        let service = BookListServiceImp(dataStore:dataStore)
        let viewModel = BookListViewModelImp(service: service, books: books, isFavoriteBooksView: isFavoriteBooksView)
        viewModel.coordinatorDelegate = self
        listVC.viewModel = viewModel
        return rootViewController
    }
}

extension BookListCoordinator : BookListViewModelCoordinatorDelegate{
    func didTapOnRow(with data: Book) {
        detailViewCoordinator = BookDetailViewCoordinator(navigationController: self.rootViewController, data: data)
        let detailVC = detailViewCoordinator.start()
        self.rootViewController.pushViewController(detailVC, animated: true)
    }
}

extension BookListCoordinator : StoryboardInitializable {
    static var storyboardName: UIStoryboard.Storyboard {
        return .main
    }
}
