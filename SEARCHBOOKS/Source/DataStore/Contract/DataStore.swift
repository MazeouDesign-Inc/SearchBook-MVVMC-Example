//
//  DataStore.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

protocol DataStore {
    func getAllBooks()->[Book]
    func getBook(by id : Int)->Book?
}
