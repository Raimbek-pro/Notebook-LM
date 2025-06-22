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
    init(interactor: NotesDetailIntector) {
        self.interactor = interactor
        self.image = interactor.loadImage()
        
        
    }
    
    func addTitle ( ){
        interactor.addTitle(text: title)
    }
    
  
       
    
}
