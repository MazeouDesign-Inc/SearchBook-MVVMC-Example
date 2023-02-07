//
//  CoreDataStack.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit
import CoreData

class CoreDataStack: NSObject {
    static var shared: CoreDataStack! // making it force unwrapped to immeditalely notice if it's accessed before being setup
    var setupComplete = false
    
    lazy var persistentContainer: NSPersistentContainer = {
        let persistentContainer = NSPersistentContainer(name: "BOOKS")
        let description = persistentContainer.persistentStoreDescriptions.first
        description?.shouldInferMappingModelAutomatically = false // inferred mapping will be handled else where
        description?.shouldMigrateStoreAutomatically = false

        return persistentContainer
    }()

    override init() {
        super.init()

        CoreDataStack.shared = self
    }

    func setup(completion: @escaping () -> Void) {
        loadPersistentStore {
            self.setupComplete = true
            completion()
        }
    }

    private func loadPersistentStore(completion: @escaping () -> Void) {
        guard persistentContainer.persistentStoreCoordinator.persistentStores.isEmpty else {
            // if we already have a store, then this code already ran, just return
            completion()
            
            return
        }
        
        self.persistentContainer.loadPersistentStores { _, error in
            guard error == nil else {
                //TODO : error managment
                return
            }
            self.persistentContainer.viewContext.automaticallyMergesChangesFromParent = true
            self.persistentContainer.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyStoreTrump

            completion()
        }
    }
}
