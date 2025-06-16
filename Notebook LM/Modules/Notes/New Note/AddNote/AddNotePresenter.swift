//
//  AddNotePresenter.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import Foundation

final class AddNotePresenter : ObservableObject{
    private let interactor: AddNoteInteractor
    private let router: AddNoteRouter
    @Published var note: [Note] = []
    init(interactor: AddNoteInteractor, router: AddNoteRouter) {
        self.interactor = interactor
        self.interactor.addNote(title: "", content: "")
        self.interactor.addNote(title: "Test", content: "Test")
        self.interactor.addNote(title: "Test2", content: "Test2")
        self.router = router
    }
    
    
    func addNote(title: String, content: String) {
        interactor.addNote(title: title, content: content)
    }
}
