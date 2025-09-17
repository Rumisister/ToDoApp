//
//  ToDoListView.swift
//  ToDoList
//
//  Created by 이하영 on 9/17/25.
//

import SwiftUI
import Model

public struct ToDoListView: View {
    @ObservedObject var viewModel: ToDoListViewModel
    
    public init(viewModel: ToDoListViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.items) { item in
                    HStack {
                        Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                            .onTapGesture {
                                viewModel.toggle(item)
                            }
                        Text(item.title)
                            .strikethrough(item.isCompleted)
                    }
                }
                .onDelete(perform: viewModel.delete)
            }
            .navigationTitle("To-do List")
            .toolbar {
                Button(action: { viewModel.addItem(title: "New Task") }) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}
