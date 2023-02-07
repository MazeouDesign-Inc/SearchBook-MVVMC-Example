//
//  FavoriteBookSearchInfos.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

extension FavoriteBookSearchInfos {
    func addToFavorite(bookSearchInfos: BookSearchInfos?) {
        self.textSnippet = bookSearchInfos?.textSnippet
    }
}
