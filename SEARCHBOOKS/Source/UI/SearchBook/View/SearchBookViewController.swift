//
//  SearchBookViewController.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//

import UIKit

class SearchBookViewController: UIViewController {
    
    @IBOutlet
    var textFieldBookTitle: PaddedTextField!
    @IBOutlet
    var textFieldBookAuthor: PaddedTextField!
    
    var rootViewController: UINavigationController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func configureTextFields() {
        textFieldBookTitle.textInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        textFieldBookTitle.attributedPlaceholder = textFieldBookTitle.textFieldAttrPlaceHolder(
            text: "Titre du livre")
        textFieldBookAuthor.textInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        textFieldBookAuthor.attributedPlaceholder = textFieldBookAuthor.textFieldAttrPlaceHolder(
            text: "Auteur du livre")
    }
    
    @IBAction func handleTapSearchBooks(_ sender: UIButton) {
        //TODO: Complete method
    }
    
    @IBAction func handleTapFavoriteBooks(_ sender: UIButton) {
        //TODO: Complete method
    }


}

