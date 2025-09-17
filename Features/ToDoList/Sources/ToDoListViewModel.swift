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

    public init() {
        self.items = [
            ToDoItem(title: "Tuist 구조 설정하기"),
            ToDoItem(title: "할 일 추가 화면 만들기"),
            ToDoItem(title: "디자인 시스템 적용하기", isCompleted: true)
        ]
    }

    public func addItem(title: String) {
        let newItem = ToDoItem(title: title)
        items.append(newItem)
    }

    public func toggle(_ item: ToDoItem) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isCompleted.toggle()
        }
    }

    public func delete(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
