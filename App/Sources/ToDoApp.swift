//
//  ToDoApp.swift
//  ToDoApp
//
//  Created by 이하영 on 9/17/25.
//

import SwiftUI

@main
struct ToDoApp: App {
    private let coordinator = AppCoordinator()

    var body: some Scene {
        WindowGroup {
            coordinator.start()
        }
    }
}
