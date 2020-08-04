//
//  KanbanwaApp.swift
//  Kanbanwa
//
//  Created by Joss Manger on 8/3/20.
//

import SwiftUI

@main
struct KanbanwaApp: App {
  
  @StateObject var mainModel: KanbanController = TestData()
  
    var body: some Scene {
        WindowGroup {
            ContentView()
              .environmentObject(mainModel)
              .frame(minWidth: 900, maxWidth: .infinity, minHeight: 400, maxHeight: .infinity)
        }
    }
}
