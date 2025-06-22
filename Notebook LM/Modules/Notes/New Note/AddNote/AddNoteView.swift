//
//  AddNoteView.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//
import SwiftUI
import PhotosUI

struct AddNoteView: View{
    
    // MARK: -image picker
    @State private var selectionImage : PhotosPickerItem?
    @State private var isImagePickerPresented: Bool = false
    @Environment(\.modelContext) var context
    
    //MARK: -observed for presenter
    @ObservedObject var presenter :AddNotePresenter
    @ObservedObject var router: AddNoteRouter
    var body : some View{
        NavigationView{
            List {
                Section (header: Text("New Notebook")){
                    if let notedetail = presenter.note{
                        NavigationLink(destination:NotesDetailbuilder.build(id: notedetail.id, context: context),isActive: $router.shouldNavigate){
                            EmptyView()
                        }
                    }
                    Button("Upload image"){
                        isImagePickerPresented = true
                     
                    }
                    .photosPicker(isPresented: $isImagePickerPresented,selection:$selectionImage,matching:.images)
                    if let selectedImage = presenter.selectedImage{
                        Image(uiImage: selectedImage)
                            .resizable()
                            .scaledToFit( )
                            .frame(height:200)
                    }
                    Button("Paste Text"){
                        
                    }
                    Button("Use Youtube Video"){
                        
                    }
                    Button("Paste Link"){
                        
                    }
                    Button("Record Audio"){
                        
                    }
                    Button("Take a photo"){
                        
                    }
                    Button("Upload Audio"){
                        
                    }
                    Button("Upload PDF"){
                        
                    }
                }
            }
        }
        .navigationTitle("New2 Notebook")
        .onChange(of: selectionImage) {
            presenter.loadImage(from: selectionImage)
            //router.navigateToNoteDetail(note: presenter.note
            
        }
        

    }
}
