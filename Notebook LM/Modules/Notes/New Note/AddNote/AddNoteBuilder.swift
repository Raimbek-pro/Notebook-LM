//
//  AddNoteBuilder.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//


import SwiftUI
import SwiftData
enum AddNoteBuilder {
    static func build(context:ModelContext,onFinish: @escaping (Note) -> Void) -> some View{
        let interactor = AddNoteInteractor(context: context)
       let router = AddNoteRouter()
        let presenter = AddNotePresenter(interactor: interactor, router: router,onFinish:onFinish)
       let view = AddNoteView(presenter: presenter, router: router)
       return view
        
    }
}
