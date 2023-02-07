//
//  BookSearchInfos.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

struct BookSearchInfos: Decodable {
    var textSnippet: String?
    
    enum CodingKeys: String, CodingKey {
        case textSnippet
    }
}
