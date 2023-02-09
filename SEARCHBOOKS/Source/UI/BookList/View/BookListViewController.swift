//
//  BookListViewController.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

class BookListViewController: UIViewController {
    
    @IBOutlet weak var tableView : UITableView! {
        didSet {
            tableView.register(UINib.init(nibName: "BookTableViewCell", bundle: nil), forCellReuseIdentifier: "BookTableViewCell")
        }
    }
    var viewModel : BookListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: Asset.Images.close.image,
                                                                 style: .plain,
                                                                 target: self,
                                                                 action: #selector(dismissView))
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.bindUI()
        self.title = self.viewModel.title
        self.viewModel.viewDidLoad()
    }
    
    private func bindUI(){
        self.viewModel.showData = { [weak self] in
            guard let `self` = self else { return }
            self.tableView.reloadData()
        }
        
        self.viewModel.showLoader = { print("Show Loader") }
        self.viewModel.hideLoader = { print("Hide Loader") }
    }
    
    @objc
    func dismissView() {
        self.dismiss(animated: true)
    }
}

extension BookListViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookTableViewCell") as! BookTableViewCell
        cell.applyData(book: self.viewModel.getBookDatas(at: indexPath.row))
        
        cell.reloadFunction = {
            if self.viewModel.isFavoriteBooksView {
                do {
                    let context = CoreDataStack.shared.persistentContainer.viewContext
                    let favoriteBooks = try context.fetch(FavoriteBook.fetchRequest())
                    var books: [Book] = []
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
                        
                        books.append(book)
                    }
    
                    self.viewModel.getData(books: books)
                } catch {}
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.viewModel.didTapOnAnime(of: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        350
    }
}
