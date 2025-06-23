//
//  TaskListRouter.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import Foundation


protocol NoteListRouterProtocol {
    func navigateToNoteDetail( note: Note)
}

final class NoteListRouter :ObservableObject, NoteListRouterProtocol {
    @Published var NoteAddToggle : Bool = false
    
    @Published var path: [Note] = []
    @Published var selectedNote: Note? = nil
       @Published var shouldNavigate: Bool = false

    
    func navigateToNoteDetail( note: Note) {
        selectedNote = note
        shouldNavigate = true
        
    }
    
    func navigateToAddNote() {
        NoteAddToggle = true
        print (" Navigate to add note")
    }
}
