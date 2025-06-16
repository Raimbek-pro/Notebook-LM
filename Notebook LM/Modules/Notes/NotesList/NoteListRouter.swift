//
//  TaskListRouter.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//


protocol NoteListRouterProtocol {
    func navigateToNoteDetail( note: Note)
}

final class NoteListRouter : NoteListRouterProtocol {
    func navigateToNoteDetail( note: Note) {
        print ( " Navigate to note detail \(note.text)")
    }
    
    func navigateToAddNote() {
        print (" Navigate to add note")
    }
}
