//
//  NotesDetail.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 20.06.2025.
//

import SwiftUI

final class NotesDetailbuilder {
    var note: Note
    init(note: Note) {
        
        self.note = note
    }
    static func build(note : Note) -> some View {
        let interactor = NotesDetailIntector(note: note)
        let presenter = NotesDetailPresenter(interactor: interactor)
        let view = NotesDetailView(presenter: presenter)
        return view

    }
}
