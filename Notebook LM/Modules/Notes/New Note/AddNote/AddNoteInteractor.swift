//
//  AddNoteInteractor.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import UIKit


protocol AddNoteInteractorProtocol {
    func addNote(title: String, content: String)
    func addImage(content: UIImage)
}

final class AddNoteInteractor:AddNoteInteractorProtocol {
    var note : Note?
    func addNote(title: String, content: String) {
        
    }
    
    func addImage(content: UIImage) {
      note = Note( id: 1, image: content)
    }
}
