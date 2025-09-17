//
//  ToDoItem.swift
//  ToDoApp
//
//  Created by 이하영 on 9/16/25.
//

import Foundation

public struct ToDoItem: Identifiable, Codable {
    public let id: UUID
    public var title: String
    public var isCompleted: Bool

    public init(id: UUID = UUID(), title: String, isCompleted: Bool = false) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
}
