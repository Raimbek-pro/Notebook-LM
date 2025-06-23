//
//  NotesDetailPresenter.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 20.06.2025.
//

import Foundation
import UIKit

protocol NotesDetailPresenterProcol {
    
}

final class NotesDetailPresenter: ObservableObject,NotesDetailPresenterProcol{
    private var interactor: NotesDetailIntector
    @Published var image : UIImage = UIImage()
    @Published var title : String = ""
    let onDeleted: (Note) -> Void
    init(interactor: NotesDetailIntector, onDeleted: @escaping (Note) -> Void) {
        self.interactor = interactor
        self.image = interactor.loadImage()
        self.title = interactor.note?.text ?? ""
        self.onDeleted = onDeleted
    }
    
    func addTitle ( ){
        interactor.addTitle(text: title)
    }
    
    func deleteNote(){
        interactor.deleteNote()
        if let deletedNote = interactor.note {
              onDeleted(deletedNote)
          }
        
    }
  
       
    
}
