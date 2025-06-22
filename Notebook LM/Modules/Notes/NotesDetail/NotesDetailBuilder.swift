//
//  NotesDetail.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 20.06.2025.
//

import SwiftUI
import SwiftData

final class NotesDetailbuilder {
    @Environment(\.modelContext) var context
    var id: PersistentIdentifier
    init(id : PersistentIdentifier) {
        
        self.id = id
    }
    static func build(id : PersistentIdentifier,context:ModelContext) -> some View {
        let interactor = NotesDetailIntector(id: id, context: context)
        let presenter = NotesDetailPresenter(interactor: interactor)
        let view = NotesDetailView(presenter: presenter)
        return view

    }
}
