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
    
    let dataManager = DataManager()
    var listBooksViewCoordinator : BookListCoordinator!
    var dataStore : DataStore!
    var rootViewController: UINavigationController!
    var bookName: String = ""
    var authorName: String = ""

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
    
    func refreshBooks() {
        handleDone()
        bookName = textFieldBookTitle.text?.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
        authorName = textFieldBookAuthor.text?.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
            
        DataManager.shared.loadBooks(bookTitle: bookName,
                                     bookAuthor: authorName,
                                     success: { [weak self] (books) in
            DispatchQueue.main.async {
                self?.listBooksViewCoordinator = BookListCoordinator(dataStore: self?.dataStore)
                self?.listBooksViewCoordinator.isFavoriteBooksView = false
                if let listBooksVC = self?.listBooksViewCoordinator.start(books: books!) {
                    self?.rootViewController.present(listBooksVC, animated: true)
                }
            }
        })
    }
    
    @IBAction func handleTapSearchBooks(_ sender: UIButton) {
        refreshBooks()
    }
    
    @IBAction func handleTapFavoriteBooks(_ sender: UIButton) {
        do {
            let context = CoreDataStack.shared.persistentContainer.newBackgroundContext()
            let favoriteBooks = try context.fetch(FavoriteBook.fetchRequest())
            var books: [Book]? = []
            for favoriteBook in favoriteBooks {
                let bookImage = BookImageLinks(small: favoriteBook.bookInfos?.bookImages?.small,
                                               thumb: favoriteBook.bookInfos?.bookImages?.thumb)
                let bookInfo = BookInfos(title: favoriteBook.bookInfos?.title ?? "",
                                         subtitle: favoriteBook.bookInfos?.subtitle,
                                         authors: favoriteBook.bookInfos?.authors as? [String],
                                         publisher: favoriteBook.bookInfos?.publisher,
                                         bookDescription: favoriteBook.bookInfos?.bookDescription,
                                         bookImages: bookImage)
                let searchInfo = BookSearchInfos(textSnippet: favoriteBook.searchInfos?.textSnippet)
                let book = Book(id: favoriteBook.id ?? "", bookInfos: bookInfo, searchInfos: searchInfo)
                
                books?.append(book)
            }
            DispatchQueue.main.async {
                self.listBooksViewCoordinator = BookListCoordinator(dataStore: self.dataStore)
                
                //self.rootViewController.pushViewController(listBooksVC, animated: true)
                self.listBooksViewCoordinator.isFavoriteBooksView = true
                let listBooksVC = self.listBooksViewCoordinator.start(books: books!)
                self.rootViewController.present(listBooksVC, animated: true)
            }
        } catch {
            //TODO: Error management
        }
    }
    
    func handleDone() {
        view.endEditing(true)
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
