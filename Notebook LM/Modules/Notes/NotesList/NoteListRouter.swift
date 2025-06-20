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
    func navigateToNoteDetail( note: Note) {
        print ( " Navigate to note detail \(note.text)")
    }
    
    func navigateToAddNote() {
        NoteAddToggle = true
        print (" Navigate to add note")
    }
}
