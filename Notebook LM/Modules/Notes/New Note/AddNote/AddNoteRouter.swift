//
//  Untitled.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

protocol AddNoteRouterProtocol{
    func navigateToNoteDetail( note: Note)
}
final class AddNoteRouter :AddNoteRouterProtocol{
    func navigateToNoteDetail( note: Note) {
        print("go to \(note.text)")
    }
}
