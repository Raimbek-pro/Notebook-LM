//
//  NotesDetailView.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 20.06.2025.
//

import Foundation
import SwiftUI
struct NotesDetailView: View {
    @ObservedObject var presenter : NotesDetailPresenter
  //  @Published var note: Note?

    var body: some View {
        VStack{
            Text("wow")
                
            Image(uiImage: presenter.image)
                .resizable()
                .scaledToFit()
        }
     

    }
}
