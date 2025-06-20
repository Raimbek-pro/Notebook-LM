//
//  TaskListBuilder.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import SwiftUI

enum NoteListBuilder {
    static func build() -> some View {
        let interactor = NoteListInteractor()
        let router = NoteListRouter()
        let presenter = NoteListPresenter(interactor: interactor, router: router)
        
        let view = NoteListView(presenter: presenter, router: router)
        return view
    }
}
