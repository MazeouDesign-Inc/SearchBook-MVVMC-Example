//
//  FavoriteBook.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import CoreData

extension FavoriteBook {
    func addToFavorite(book: Book?, context: NSManagedObjectContext) {
        self.id = book?.id
        self.bookInfos = FavoriteBookInfos.init(context: context)
        self.bookInfos?.addToFavorite(bookInfos: book?.bookInfos, context: context)
        self.searchInfos = FavoriteBookSearchInfos.init(context: context)
        self.searchInfos?.addToFavorite(bookSearchInfos: book?.searchInfos)
    }
}
