//
//  FavoriteBookImageLinks.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

extension FavoriteBookImageLinks {
    func addToFavorite(bookImageLink: BookImageLinks?) {
        self.small = bookImageLink?.small
        self.thumb = bookImageLink?.thumb
    }
}
