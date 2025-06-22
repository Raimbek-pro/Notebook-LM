//
//  TaskListBuilder.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import SwiftUI
import SwiftData

enum NoteListBuilder {
    static func build(context: ModelContext) -> some View {
        let interactor = NoteListInteractor(context: context)
        let router = NoteListRouter()
        let presenter = NoteListPresenter(interactor: interactor, router: router)
        
        let view = NoteListView(presenter: presenter, router: router)
        return view
    }
}
