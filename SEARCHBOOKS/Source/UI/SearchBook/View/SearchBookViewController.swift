//
//  SearchBookViewController.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//

import UIKit

class SearchBookViewController: UIViewController {
    
    @IBOutlet
    var labelViewTitle: UILabel!
    @IBOutlet
    var textFieldBookTitle: PaddedTextField!
    @IBOutlet
    var textFieldBookAuthor: PaddedTextField!
    @IBOutlet
    var buttonSearchBooks: UIButton!
    @IBOutlet
    var buttonShowFavoriteBooks: UIButton!
    
    var dataStore : DataStore!
    var rootViewController: UINavigationController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
    }
    
    func configureUI() {
        textFieldBookTitle.textInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        textFieldBookTitle.attributedPlaceholder = textFieldBookTitle.textFieldAttrPlaceHolder(
            text: "Titre du livre")
        textFieldBookAuthor.textInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        textFieldBookAuthor.attributedPlaceholder = textFieldBookAuthor.textFieldAttrPlaceHolder(
            text: "Auteur du livre")
        labelViewTitle.font = FontFamily.Sprout.bold.font(size: 50)
        buttonSearchBooks.setAttributedTitle(NSAttributedString(string: "RECHERCHER", attributes: [.font: FontFamily.Sprout.bold.font(size: 17)]), for: .normal)
        buttonSearchBooks.setAttributedTitle(NSAttributedString(string: "RECHERCHER", attributes: [.font: FontFamily.Sprout.bold.font(size: 17)]), for: .selected)
        buttonShowFavoriteBooks.setAttributedTitle(NSAttributedString(string: "MA BIBLIOTHÈQUE", attributes: [.font: FontFamily.Sprout.bold.font(size: 17)]), for: .normal)
        buttonShowFavoriteBooks.setAttributedTitle(NSAttributedString(string: "MA BIBLIOTHÈQUE", attributes: [.font: FontFamily.Sprout.bold.font(size: 17)]), for: .selected)
    }
    
    @IBAction func handleTapSearchBooks(_ sender: UIButton) {
        //TODO: Complete method
    }
    
    @IBAction func handleTapFavoriteBooks(_ sender: UIButton) {
        //TODO: Complete method
    }
}

// MARK: - UITextFieldDelegate
extension SearchBookViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        changeFirstResponder(sender: textField)

        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        switch textField {
            case textFieldBookTitle:
                setupIQKeyboardToolbar(toolbarTitleLabel: "OK")
            
            case textFieldBookAuthor:
                setupIQKeyboardToolbar(toolbarTitleLabel: "OK")

            default:
                break
        }
    }
}
