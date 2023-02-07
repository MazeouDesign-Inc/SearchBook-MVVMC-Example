//
//  BookInfos.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

struct BookInfos: Decodable {
    var title : String
    var subtitle : String?
    var authors : [String]?
    var publisher: String?
    var bookDescription: String?
    var bookImages: BookImageLinks?
    
    enum CodingKeys: String, CodingKey {
        case title
        case subtitle
        case authors
        case publisher
        case bookDescription = "description"
        case bookImages = "imageLinks"
    }
}
