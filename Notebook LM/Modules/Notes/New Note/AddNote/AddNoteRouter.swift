//
//  Untitled.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import Foundation

protocol AddNoteRouterProtocol{
    func navigateToNoteDetail()
}
final class AddNoteRouter : AddNoteRouterProtocol,ObservableObject{
    @Published var shouldNavigate = false
    func navigateToNoteDetail( ) {
        shouldNavigate = true
     
    }
}
