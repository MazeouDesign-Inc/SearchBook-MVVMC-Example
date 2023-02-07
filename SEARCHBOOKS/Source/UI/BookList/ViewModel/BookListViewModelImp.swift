//
//  BookListViewModelImp.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

class BookListViewModelImp : BookListViewModel {

    var data: [Book]?
    var service: BookListService
    var title: String{
        return "Book Store"
    }
    var coordinatorDelegate: BookListViewModelCoordinatorDelegate?
    var isFavoriteBooksView: Bool = false
    
    
    var showData: (() -> ())?
    var showLoader: (() -> ())?
    var hideLoader: (() -> ())?
    
    private var shouldShowLoader = false{
        didSet{
            (self.shouldShowLoader) ? self.showLoader?() : self.hideLoader?()
        }
    }
    
    init(service : BookListService, books: [Book], isFavoriteBooksView: Bool) {
        self.service = service
        shouldShowLoader = true
        self.getData(books: books)
        self.isFavoriteBooksView = isFavoriteBooksView
    }
    
    func didTapOnAnime(of index: Int) {
        self.coordinatorDelegate?.didTapOnRow(with: self.data![index])
    }
    
    func heightForRow(at index: Int, of section: Int) -> Int {
        return 70
    }
    
    func numberOfRowsInSection(section: Int) -> Int {
        return (data != nil) ? (data?.count)! : 0
    }
    func viewDidLoad() {
        (shouldShowLoader) ? self.showLoader?() : self.hideLoader?()
    }
    
    func getBookDatas(at index: Int) -> Book {
        return self.data![index]
    }
   
    func getData(books: [Book]){
        self.data = books
        self.shouldShowLoader = false
        self.showData?()
    }
}
