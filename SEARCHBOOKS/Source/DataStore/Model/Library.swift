//
//  Library.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

struct Librairy: Decodable {
    var totalItems : Int
    var items : [Book]
    
    enum CodingKeys: String, CodingKey {
        case totalItems
        case items
    }
}
