//
//  TaskListView.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//

import SwiftUI

struct NoteListView: View {
    @ObservedObject  var presenter: NoteListPresenter
    @ObservedObject var router: NoteListRouter
    var body: some View {
        VStack{
            NavigationView{
                List(presenter.notes, id :\.id){ note in
                    Button(action: {
                        presenter.didSelectNote(note)
                    }){
                        Text(note.text ?? "")
                    }
                }
                .navigationTitle(Text("Notes"))
            }
            Button(action: {
                presenter.didCreateNote()
            }){
                Text("new note")
            }.sheet(isPresented: $router.NoteAddToggle){
                AddNoteBuilder.build()
            }
        }
    }
}
