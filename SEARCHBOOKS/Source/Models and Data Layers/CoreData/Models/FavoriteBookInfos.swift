//
//  FavoriteBookInfos.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation
import CoreData

extension FavoriteBookInfos {
    func addToFavorite(bookInfos: BookInfos?, context: NSManagedObjectContext) {
        self.title = bookInfos?.title
        self.subtitle = bookInfos?.subtitle
        self.authors = bookInfos?.authors
        self.publisher = bookInfos?.publisher
        self.bookDescription = bookInfos?.bookDescription
        self.bookImages = FavoriteBookImageLinks.init(context: context)
        self.bookImages?.addToFavorite(bookImageLink: bookInfos?.bookImages)
    }
}
