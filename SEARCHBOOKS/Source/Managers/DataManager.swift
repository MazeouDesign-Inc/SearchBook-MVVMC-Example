//
//  DataManager.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

class DataManager: NSObject {
    
    static var shared: DataManager!
    var booksList: [Book] = []
    
    override init() {
        super.init()
        DataManager.shared = self
    }
    
    func loadBooks(bookTitle: String, bookAuthor: String, success: @escaping (_ books: [Book]?) -> Void) {
        NetworkManager().fetchBooks(bookTitle: bookTitle,
                                    bookAuthor: bookAuthor,
                                    completionHandler: { [weak self] (books) in
            self?.booksList = books
            success(self?.booksList)
        })
    }
}
