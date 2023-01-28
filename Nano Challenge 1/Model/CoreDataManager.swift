//
//  CoreDataManager.swift
//  Nano Challenge 1
//
//  Created by Jonathan Ricky Sandjaja on 28/01/23.
//

import Foundation
import CoreData

class CoreDataManager {
    static let shared = CoreDataManager()
    
    let container = NSPersistentContainer(name: "AnimeCoreData")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Error loading Core Data. Error: \(error)")
            }
        }
    }
    
    func save() {
        let context = container.viewContext
        
        if context.hasChanges {
            do {
                try context.save()
            } catch let error {
                fatalError("Error saving to Core Data. Error: \(error)")
            }
        }
    }
}
