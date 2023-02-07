//
//  BookDetailViewModel.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

protocol BookDetailViewModel {
    var data : Book{ get }
    var title : String{ get }

    var showData : ((Book)->())?{ get set }
    
    func viewDidLoad()
}
