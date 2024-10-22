//
//  MainView.swift
//  notes
//
//  Created by Kristina Litvinova on 09.10.2024.
//

import SwiftUI

struct ListView: View {
    
    @Environment(\.managedObjectContext) private var moc
    //managed object context
    
    @FetchRequest(sortDescriptors: []) var notes: FetchedResults<Note>
    //loading data plus sorting and filters
    
    @State private var name = ""
    
    var body: some View {
        ZStack{
            RadialGradient(colors: [Color(red: 0.965, green: 0.965, blue: 0.97), .blue], center: .top, startRadius: 600, endRadius: 10)
                .ignoresSafeArea()
            
            VStack {
                HStack{
                    TextField("New Note", text: $name)
                    Button("Add"){
                        let newNote = Note(context: moc)
                        newNote.id = UUID()
                        newNote.title = name
                        newNote.content = ""
                        newNote.lastEdited = Date()
                        
                        try? moc.save()
                        name = ""
                    }
                    
                }
                .padding()
                .background(Color.init(uiColor: .white))
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .padding()
                
                
                
                List(notes){ note in
                    Text(note.title ?? "No title")
                }
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .padding()
            }
           // .sheet(item: <#T##Binding<Identifiable?>#>, content: <#T##(Identifiable) -> View#>)
            
        // Add new note via a sheet
        // Button "add" -> sheet opens with 2 fields -> add note
        // or with nav stack
        // add note -> new view with blank fields -> add note
            
        }
    }
}

#Preview {
    ListView()
}
