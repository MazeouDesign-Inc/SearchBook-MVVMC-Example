//
//  BookTableViewCell.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit
import CoreData

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var favoriteButton: UIButton!
    
    var book: Book?
    var authors: String = ""
    var reloadFunction: (() -> Void)?
    
    func applyData(book: Book) {
        favoriteButton.titleLabel?.isHidden = true
        titleLabel.text = book.bookInfos?.title.trimmingCharacters(in: .whitespaces)
        titleLabel.font = FontFamily.Sprout.bold.font(size: 16)
        if let authorsList = book.bookInfos?.authors {
            for author in authorsList {
                authors = authors.isEmpty ? author : " \(authors), \(author)"
            }
            authorLabel.text = authors.trimmingCharacters(in: .whitespaces)
        }
        authorLabel.font = FontFamily.Sprout.bold.font(size: 16)
        
        if let bookDescription = book.bookInfos?.bookDescription {
            descriptionLabel.text = bookDescription.trimmingCharacters(in: .whitespaces)
        } else {
            descriptionLabel.text = book.searchInfos?.textSnippet?.trimmingCharacters(in: .whitespaces)
        }
        bookImageView.getImageFromUrl(imageURL: NSURL(string: book.bookInfos?.bookImages?.thumb ?? "")! as URL)
        self.book = book
        
        do {
            let context = CoreDataStack.shared.persistentContainer.newBackgroundContext()
            let coreDataBooks = try context.fetch(FavoriteBook.fetchRequest())
            let matchingBook = coreDataBooks.filter { $0.id == book.id }.first
            if matchingBook == nil {
                // Book does'nt exist in CoreData
                favoriteButton.tintColor = .notFavoriteColor
            } else {
                favoriteButton.tintColor = .favoriteColor
                // Book already exist in CoreData
            }
        } catch {
            //TODO: Error management
        }
    }
    
    @IBAction func saveBook(_ sender: UIButton) {
        let context = CoreDataStack.shared.persistentContainer.viewContext
        context.performAndWait({
            context.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
            self.favoriteBook(inContext: context)
            context.saveAndLogError()
        })
    }
    
    func favoriteBook(inContext context: NSManagedObjectContext) {
        // Manage books persistant storage into CoreData
        do {
            let coreDataBooks = try context.fetch(FavoriteBook.fetchRequest())
            var matchingBook = coreDataBooks.filter { $0.id == book?.id }.first
            if matchingBook == nil {
                // Book does'nt exist in CoreData
                matchingBook = FavoriteBook.init(context: context)
                matchingBook?.addToFavorite(book: self.book, context: context)
                favoriteButton.tintColor = .favoriteColor
            } else if let matchingBook = matchingBook {
                favoriteButton.tintColor = .notFavoriteColor
                // Book already exist in CoreData
                context.delete(matchingBook)
            }
        } catch {
            //TODO: Error management
        }
        reloadFunction?()
    }
}
