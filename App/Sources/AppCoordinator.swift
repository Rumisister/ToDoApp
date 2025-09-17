//
//  AppCoordinator.swift
//  ToDoApp
//
//  Created by 이하영 on 9/17/25.
//

import SwiftUI
import ToDoList

final class AppCoordinator {
    func start() -> some View {
        let todoListCoordinator = ToDoListCoordinator()
        return todoListCoordinator.start()
    }
}
