//
//  BookListService.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

protocol BookListService {
    var dataStore : DataStore { get }
   
    func getBookList(response : @escaping([Book])->())
    func getBook(by id : Int, response : @escaping(Book?)->())
}
