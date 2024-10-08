//
//  notesApp.swift
//  notes
//
//  Created by Kristina Litvinova on 08.10.2024.
//

import SwiftUI

@main
struct notesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
