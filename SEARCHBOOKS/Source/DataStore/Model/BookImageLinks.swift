//
//  BookImageLinks.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

struct BookImageLinks: Decodable {
    var small: String?
    var thumb: String?
    
    enum CodingKeys: String, CodingKey {
        case small = "smallThumbnail"
        case thumb = "thumbnail"
    }
}
