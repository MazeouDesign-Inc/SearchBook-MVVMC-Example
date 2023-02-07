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
        titleLabel.text = book.bookInfos?.title
        
        print("zzz - ABCDE: \(book.bookInfos?.bookImages?.thumb ?? "")")
        
        if let authorsList = book.bookInfos?.authors {
            for author in authorsList {
                authors = authors.isEmpty ? author : " \(authors), \(author)"
            }
            authorLabel.text = authors
        }
        //authorLabel.font = FontFamily.Sprout.bold.font(size: 18)
        
        if let bookDescription = book.bookInfos?.bookDescription {
            descriptionLabel.text = bookDescription
        } else {
            descriptionLabel.text = book.searchInfos?.textSnippet
        }
        bookImageView.getImageFromUrl(imageURL: NSURL(string: book.bookInfos?.bookImages?.thumb ?? "")! as URL)
        self.book = book
        
        do {
            let context = CoreDataStack.shared.persistentContainer.newBackgroundContext()
            let coreDataBooks = try context.fetch(FavoriteBook.fetchRequest())
            let matchingBook = coreDataBooks.filter { $0.id == book.id }.first
            if matchingBook == nil {
                // Book does'nt exist in CoreData
                favoriteButton.backgroundColor = .red
            } else {
                favoriteButton.backgroundColor = .green
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
//            self.addUpdateCategories(inContext: context)
//            self.addUpdateArticles(inContext: context)
            self.favoriteBook(inContext: context)
            context.saveAndLogError()
//            success()
            
        })
    }
    
    func favoriteBook(inContext context: NSManagedObjectContext) {
        // Manage categories persistant storage into CoreData
//        do {
//            let coreDataCategories = try context.fetch(ArticleCategory.fetchRequest())
//            for category in categoriesList {
//                var matchingCategory = coreDataCategories.filter { $0.id == category._id }.first
//                if matchingCategory == nil {
//                    matchingCategory = ArticleCategory(context: context)
//                    matchingCategory?.id = category._id
//                }
//                matchingCategory?.update(category: category)
//            }
//            self.articlesCategoryList = coreDataCategories
//        } catch {
//            //TODO: Error management
//        }
        do {
            let coreDataBooks = try context.fetch(FavoriteBook.fetchRequest())
            var matchingBook = coreDataBooks.filter { $0.id == book?.id }.first
            if matchingBook == nil {
                // Book does'nt exist in CoreData
                matchingBook = FavoriteBook.init(context: context)
                matchingBook?.addToFavorite(book: self.book, context: context)
                favoriteButton.backgroundColor = .green
            } else if let matchingBook = matchingBook {
                favoriteButton.backgroundColor = .red
                // Book already exist in CoreData
                context.delete(matchingBook)
            }
        } catch {
            //TODO: Error management
        }
        reloadFunction?()

    }
    
//    func saveInCoreData(_ success: @escaping () -> Void) {
//        let context = CoreDataStack.shared.persistentContainer.newBackgroundContext()
//        context.performAndWait({
//            context.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
//            self.addUpdateCategories(inContext: context)
//            self.addUpdateArticles(inContext: context)
//            context.saveAndLogError()
//            success()
//
//        })
//
//    }
}
