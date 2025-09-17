//
//  ToDoStorage.swift
//  Model
//
//  Created by 이하영 on 9/17/25.
//

import Foundation

public protocol ToDoStorage {
    func load() -> [ToDoItem]
    func save(_ items: [ToDoItem])
}
