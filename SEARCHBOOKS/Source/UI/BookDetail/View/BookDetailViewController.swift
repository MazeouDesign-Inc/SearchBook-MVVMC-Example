//
//  BookDetailViewController.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {
   
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var viewModel : BookDetailViewModel!
    
   override func viewDidLoad() {
        super.viewDidLoad()
        self.bindUI()
        self.title = self.viewModel.title
        self.viewModel.viewDidLoad()
    }

    private func bindUI(){
        self.viewModel.showData = { [weak self] (data) in
            guard let `self` = self else { return }
            self.titleLabel.text = data.bookInfos?.title
            self.descriptionTextView.text = data.bookInfos?.bookDescription
            self.imageView.getImageFromUrl(imageURL: NSURL(string: data.bookInfos?.bookImages?.thumb ?? "")! as URL)
        }
    }
}
