//
//  TaskListInteractor.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

protocol NoteListInteractorProtocol {
    func fetchNotes() -> [Note]
}

final class NoteListInteractor: NoteListInteractorProtocol {
    func fetchNotes() -> [Note] {
        return [
            Note(id:1,text:"Buy milk"),
            Note(id:2,text:"Buy eggs")
        ]
    }
    
    
}
