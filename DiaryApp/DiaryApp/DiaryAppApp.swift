//
//  DiaryAppApp.swift
//  DiaryApp
//
//  Created by Oğuzhan Deniz on 14.09.2022.
//

import SwiftUI

@main
struct DiaryAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
