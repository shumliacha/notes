//
//  notesApp.swift
//  notes
//
//  Created by Kristina Litvinova on 08.10.2024.
//

import SwiftUI

@main
struct notesApp: App {
    
    @StateObject private var persistenceController = PersistenceController(name: "NoteModel")
    
    var body: some Scene {
        WindowGroup {
            ListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            //@StateObject and .environment provide all files with container => model
            //viewContext for performance increase - working with cache memory
        }
    }
}
