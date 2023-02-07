//
//  Book.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

struct Book: Decodable {
    var id : String
    var bookInfos : BookInfos?
    var searchInfos: BookSearchInfos?
    
    enum CodingKeys: String, CodingKey {
        case id
        case bookInfos = "volumeInfo"
        case searchInfos = "searchInfo"
    }
}
