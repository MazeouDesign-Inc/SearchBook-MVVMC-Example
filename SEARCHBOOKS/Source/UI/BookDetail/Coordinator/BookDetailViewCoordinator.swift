//
//  BookDetailViewCoordinator.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

class BookDetailViewCoordinator: Coordinator {
    func start(books: [Book]) -> UIViewController {
        let detailVC = BookDetailViewCoordinator.instantiateViewController() as! BookDetailViewController
        
        return detailVC
    }
    
    
    let navigationController : UINavigationController
    let data : Book
    
    init(navigationController : UINavigationController, data : Book) {
        self.navigationController = navigationController
        self.data = data
    }
    
    func start()->UIViewController{
        let detailVC = BookDetailViewCoordinator.instantiateViewController() as! BookDetailViewController
        let viewModel = BookDetailViewModelImp(data: self.data)
        detailVC.viewModel = viewModel
        return detailVC
    }
}

extension BookDetailViewCoordinator : StoryboardInitializable {
    static var storyboardName: UIStoryboard.Storyboard {
        return .main
    }
}
