//
//  ViewModel.swift
//  notes
//
//  Created by Kristina Litvinova on 15.10.2024.
//

import Foundation
import SwiftUI
import CoreData
import Combine

class NoteViewModel: ObservableObject {
    // Reference to Core Data managed context
    private let viewContext: NSManagedObjectContext

    // Published property to store the fetched notes
    @Published var notes: [Note] = []
    
    init(context: NSManagedObjectContext) {
        self.viewContext = context
        fetchNotes()
    }

    // Fetch all notes from Core Data
    func fetchNotes() {
        let request: NSFetchRequest<Note> = Note.fetchRequest()
        let sortDescriptor = NSSortDescriptor(keyPath: \Note.createdDate, ascending: false)
        request.sortDescriptors = [sortDescriptor]
        
        do {
            notes = try viewContext.fetch(request)
        } catch let error {
            print("Error fetching notes: \(error.localizedDescription)")
        }
    }

    // Add a new note
    func addNote() {
        let newNote = Note(context: viewContext)
        newNote.title = "New Note"
        newNote.content = ""
        newNote.createdDate = Date()
        
        saveContext()
        fetchNotes() // Refresh the list after adding
    }

    // Update an existing note
    func updateNote(_ note: Note, title: String, content: String) {
        note.title = title
        note.content = content
        note.createdDate = Date()
        
        saveContext()
        fetchNotes() // Refresh the list after updating
    }

    // Delete a note
    func deleteNotes(at offsets: IndexSet) {
        for index in offsets {
            let noteToDelete = notes[index]
            viewContext.delete(noteToDelete)
        }
        saveContext()
        fetchNotes() // Refresh the list after deleting
    }

    // Save changes to Core Data
    private func saveContext() {
        do {
            try viewContext.save()
        } catch let error {
            print("Error saving context: \(error.localizedDescription)")
        }
    }
}
