//
//  TaskListPresenter.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import Foundation

final class NoteListPresenter : ObservableObject {
    private let interactor : NoteListInteractor
    private let router : NoteListRouter
    
    @Published var notes : [Note] = []
    @Published var NoteAddToggle : Bool = false
    init(interactor: NoteListInteractor, router: NoteListRouter) {
        self.interactor = interactor
        self.router = router
        loadNotes()
    }
    
    func loadNotes() {
        notes = interactor.fetchNotes() //sync
        print("loaded")
    }
    
    func didSelectNote(_ note: Note) {
        router.navigateToNoteDetail(note: note)
    }
    
    func didCreateNote() {
        NoteAddToggle = true
        router.navigateToAddNote()
    }
}
