//
//  PersistanceController.swift
//  notes
//
//  Created by Kristina Litvinova on 16.10.2024.
//

import Foundation
import CoreData

class PersistenceController: ObservableObject {
    
    var container: NSPersistentContainer //A container that encapsulates the Core Data stack in the app
    
    init(name: String) {
        container = NSPersistentContainer(name: name) //question
        container.loadPersistentStores { _, error in
            if let error = error { //error can be nil, so we just check for errors here
                print("CoreData Error: \(error.localizedDescription)")
            }
        }
    }
}
