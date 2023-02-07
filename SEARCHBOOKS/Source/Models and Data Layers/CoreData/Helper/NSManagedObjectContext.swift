//
//  NSManagedObjectContext.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import CoreData
import Foundation

extension NSManagedObjectContext {
    // MARK: Model

    convenience init(model: NSManagedObjectModel, storeURL: URL) {
        let persistentStoreCoordinator = NSPersistentStoreCoordinator(managedObjectModel: model)
        try! persistentStoreCoordinator.addPersistentStore(
            ofType: NSSQLiteStoreType,
            configurationName: nil,
            at: storeURL,
            options: nil
        )

        self.init(concurrencyType: .mainQueueConcurrencyType)
        self.persistentStoreCoordinator = persistentStoreCoordinator
    }

    // MARK: - Destroy

    func destroyStore() {
        persistentStoreCoordinator?.persistentStores.forEach {
            try? persistentStoreCoordinator?.remove($0)
            try? persistentStoreCoordinator?.destroyPersistentStore(at: $0.url!, ofType: $0.type, options: nil)
        }
    }
    
    func saveAndLogError() {
        do {
            if(self.hasChanges) {
                try self.save()
            }
        } catch {
            //TODO: Error managment
        }
    }
    
    func fetchNoThrow<T>(_ request: NSFetchRequest<T>) -> [T] {
        do {
            return try fetch(request)
        } catch {
           //TODO: Error management
            return []
        }
    }
}
