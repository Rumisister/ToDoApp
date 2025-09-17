//
//  UserDefaultsToDoStorage.swift
//  Model
//
//  Created by 이하영 on 9/17/25.
//

import Foundation

public final class UserDefaultsToDoStorage: ToDoStorage {
    private let key = "ToDoItems"

    public init() {}

    public func load() -> [ToDoItem] {
        guard let data = UserDefaults.standard.data(forKey: key) else { return [] }
        do {
            let items = try JSONDecoder().decode([ToDoItem].self, from: data)
            return items
        } catch {
            print("❌ Failed to load ToDoItems: \(error)")
            return []
        }
    }

    public func save(_ items: [ToDoItem]) {
        do {
            let data = try JSONEncoder().encode(items)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print("❌ Failed to save ToDoItems: \(error)")
        }
    }
}
