//
//  AddNoteInteractor.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import UIKit
import SwiftData
import SwiftUICore

protocol AddNoteInteractorProtocol {
    func addNote(title: String, content: String)
    func addImage(content: UIImage)
}

final class AddNoteInteractor:AddNoteInteractorProtocol {
    var context : ModelContext
    init(context: ModelContext, note: Note? = nil) {
        self.context = context
        
    }
    var note : Note?
    func addNote(title: String, content: String) {
        
    }
    
    func addImage(content: UIImage) {
        
      let  note = Note( image: content)
        //       if let note = note {
                    context.insert(note)
        //        }
                try? context.save()
        //
        //    }
        self.note = note
    }
}
