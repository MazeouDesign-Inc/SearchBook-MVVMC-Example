//
//  BookDetailViewModelImp.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

class BookDetailViewModelImp : BookDetailViewModel{
    var data: Book
    var title: String{
        return data.bookInfos?.title ?? "zzz - Empty Title"
    }
    
    var showData: ((Book) -> ())?
    
    init(data : Book) {
        self.data = data
    }
   
    func viewDidLoad() {
        self.showData?(self.data)
    }
}
