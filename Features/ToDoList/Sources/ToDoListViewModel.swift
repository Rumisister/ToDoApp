//
//  ToDoListViewModel.swift
//  ToDoList
//
//  Created by 이하영 on 9/17/25.
//

import Foundation
import Model

public final class ToDoListViewModel: ObservableObject {
    @Published public private(set) var items: [ToDoItem] = []
    
    private let storage: ToDoStorage

    public init(storage: ToDoStorage = UserDefaultsToDoStorage()) {
        self.storage = storage
        self.items = storage.load()
    }

    public func addItem(title: String) {
        let newItem = ToDoItem(title: title)
        items.append(newItem)
        storage.save(items)
    }

    public func toggle(_ item: ToDoItem) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isCompleted.toggle()
            storage.save(items)
        }
    }

    public func delete(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
        storage.save(items)
    }
}
