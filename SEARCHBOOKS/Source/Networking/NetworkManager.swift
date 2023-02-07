//
//  NetworkManager.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

class NetworkManager: NSObject {
    func fetchBooks(bookTitle: String?, bookAuthor: String?, completionHandler: @escaping ([Book]) -> Void) {
        let url = URL(string: "\(URLs.listOfBooksURL)\(bookTitle ?? ""):\(bookAuthor ?? "")")!
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("zzz - Error with fetching books: \(error)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                print("Error with the response, unexpected status code: \(String(describing: response))")
              return
            }
            if let data = data,
               let booksList = try? JSONDecoder().decode(Librairy.self, from: data) {
                completionHandler(booksList.items)
            }
        })
        task.resume()
    }
}
