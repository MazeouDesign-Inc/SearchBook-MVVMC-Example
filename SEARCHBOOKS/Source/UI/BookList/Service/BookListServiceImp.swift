//
//  BookListServiceImp.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

class BookListServiceImp : BookListService {
    
    var dataStore: DataStore

    init(dataStore : DataStore) {
        self.dataStore = dataStore
    }
    func getBookList(response: @escaping ([Book]) -> ()) {
        let data = dataStore.getAllBooks()
        response(data)
    }
    
    func getBook(by id: Int, response: @escaping (Book?) -> ()) {
        let data = dataStore.getBook(by: id)
        response(data)
    }
    
}
