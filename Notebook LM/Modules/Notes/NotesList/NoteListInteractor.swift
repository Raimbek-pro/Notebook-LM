//
//  TaskListInteractor.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import SwiftData

import SwiftUI

protocol NoteListInteractorProtocol {
    func fetchNotes() -> [Note]
}

final class NoteListInteractor: NoteListInteractorProtocol {
    var context : ModelContext
    init(context: ModelContext) {
        self.context = context
    }
 
    func fetchNotes() -> [Note] {
        (try? context.fetch(FetchDescriptor<Note>())) ?? []
    }
    
    
}
