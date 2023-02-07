//
//  BookListViewModel.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

protocol BookListViewModelCoordinatorDelegate {
    func didTapOnRow(with data : Book)
}

protocol BookListViewModel {
    
    var data : [Book]?{ get }
    var service : BookListService{ get }
    var coordinatorDelegate : BookListViewModelCoordinatorDelegate?{get set}
    var title : String{ get }
    var isFavoriteBooksView : Bool{ get }
    
    var showData : (()->())?{ get set}
    var showLoader : (()->())?{get set}
    var hideLoader : (()->())?{get set}
    
    func didTapOnAnime(of index : Int)
    func heightForRow(at index : Int, of section : Int)->Int
    func numberOfRowsInSection(section : Int)->Int
    func viewDidLoad()
    func getBookDatas(at index : Int)->Book
    func getData(books: [Book])->Void
}
