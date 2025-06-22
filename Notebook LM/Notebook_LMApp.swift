//
//  Notebook_LMApp.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 15.06.2025.
//

import SwiftUI
import SwiftData
@main
struct Notebook_LMApp: App {
   

    var body: some Scene {
        WindowGroup {
            AppEntryPoint()
                .modelContainer(for:Note.self)
        }
    }
}
