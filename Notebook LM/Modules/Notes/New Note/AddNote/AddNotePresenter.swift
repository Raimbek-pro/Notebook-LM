//
//  AddNotePresenter.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import Foundation
import SwiftUI
import PhotosUI

final class AddNotePresenter : ObservableObject{
    
    let onFinish: (Note) -> Void
    @Published var selectedImage: UIImage? = nil

    @Published var note : Note?
    private let interactor: AddNoteInteractor
    private let router: AddNoteRouter

    init(interactor: AddNoteInteractor, router: AddNoteRouter,onFinish: @escaping (Note) -> Void) {
        self.interactor = interactor

        self.router = router
        self.onFinish = onFinish
    }
    

    
    func  loadImage(from pickerItem: PhotosPickerItem?){
        guard let pickerItem else {return}
        
        Task{
            if let data = try? await  pickerItem.loadTransferable(type:Data.self),
               let image = UIImage(data: data){
                await   MainActor.run{
                    self.selectedImage = image
                    interactor.addImage(content:image)
                    note = interactor.note
                    router.navigateToNoteDetail()
                    if let note = note {
                        onFinish(note)
                    }
                }
            }
        }
        
    
        
      
    }
    func addNote(title: String, content: String) {
        interactor.addNote(title: title, content: content)
    }
    
    func handleUploadImage(){
        
    }
    
    func handlePasteText(){
        
    }
    
    func handleUseYouTubeVideo(){
        
    }
    
    func handlePasteLink(){
        
    }
    
    func handleRecordAudio(){
        
    }
    
    
}
