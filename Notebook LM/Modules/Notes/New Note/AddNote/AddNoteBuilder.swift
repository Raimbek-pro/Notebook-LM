//
//  AddNoteBuilder.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//


import SwiftUI
enum AddNoteBuilder {
   static func build() -> some View{
       let interactor = AddNoteInteractor()
       let router = AddNoteRouter()
       let presenter = AddNotePresenter(interactor: interactor, router: router)
       let view = AddNoteView(presenter: presenter)
       return view
        
    }
}
