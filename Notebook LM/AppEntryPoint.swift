//
//  AppEntryPoint.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 22.06.2025.
//
import SwiftUI
import SwiftData
struct AppEntryPoint :View{
    @Environment(\.modelContext) var context
    var body : some View {
        NoteListBuilder.build(context: context)
    }
}
