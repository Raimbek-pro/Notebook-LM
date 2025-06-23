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
    static func build(id : PersistentIdentifier,context:ModelContext,onDeleted: @escaping (Note) -> Void) -> some View {
        guard let note = context.model(for: id) as? Note else {
            return AnyView(EmptyView())
        }
        let interactor = NotesDetailIntector(id: id, context: context)
        let presenter = NotesDetailPresenter(interactor: interactor, onDeleted: onDeleted       )
        let view = NotesDetailView(presenter: presenter)
        return AnyView(view)

    }
}
