//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by 김인겸 on 2022/12/18.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    @StateObject var store = Memostore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
                
        }
    }
}
