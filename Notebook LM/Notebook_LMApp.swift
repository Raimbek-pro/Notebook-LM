//
//  Notebook_LMApp.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 15.06.2025.
//

import SwiftUI

@main
struct Notebook_LMApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
