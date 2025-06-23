//
//  TaskListView.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import SwiftUI
import SwiftData

struct NoteListView: View {
    @Environment(\.modelContext) var context
    @ObservedObject  var presenter: NoteListPresenter
    @ObservedObject var router: NoteListRouter
 
    
    var body: some View {
        VStack{
            
            NavigationStack(path:$router.path){
                List(presenter.notes, id :\.id){ note in
                    Button(action: {
                     //   presenter.didSelectNote(note)
                        router.path.append(note)
                    }){
                        Text(note.text ?? "")
                        if let thumbnail = note.thumbnailImage {
                            Image(uiImage: thumbnail)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                        }
                    }
                }
                .navigationTitle(Text("Notes"))
                
                .navigationDestination(for:Note.self) { note in
                    
                        NotesDetailbuilder.build(id: note.id, context: context, onDeleted:
                                                    {deletedNoted in
                            presenter.notes.removeAll(where: { $0.id == deletedNoted.id })
                            router.shouldNavigate = false
                            router.selectedNote = nil
                            
                        })
                    
                }

                
            }
            Button(action: {
                presenter.didCreateNote()
            }){
                Text("new note")
            }.sheet(isPresented: $router.NoteAddToggle){
                AddNoteBuilder.build(context: context){ newNote in
                    presenter.notes.insert(newNote, at: 0)
                    router.NoteAddToggle = false
                    router.navigateToNoteDetail(note: newNote)
                }
            }
        }
            }
}
