//
//  NotesDetailIntector.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 20.06.2025.
//

import SwiftData
import SwiftUI

protocol NotesDetailIntectorProtocol{
    
}
final class NotesDetailIntector {
    let context : ModelContext
    var id : PersistentIdentifier
     var note : Note?
    init(id: PersistentIdentifier,context: ModelContext) {
        self.id = id
        self.context = context
        self.note =  context.model(for: id) as? Note
    }
    
    func loadImage() -> UIImage{
     
        return note?.uiImage ?? UIImage()
    }
    
    func addTitle(text:String?){
        if let text = text{
            note?.text = text
        }
         try? context.save()
    }
    
    
    func deleteNote(){
        guard let note = note else {return}
         context.delete(note)
        try? context.save()
    }
}
