//
//  ToDoListCoordinator.swift
//  ToDoList
//
//  Created by 이하영 on 9/17/25.
//

import SwiftUI

public final class ToDoListCoordinator {
    public init() {}

    public func start() -> some View {
        let viewModel = ToDoListViewModel()
        return ToDoListView(viewModel: viewModel)
    }
}
