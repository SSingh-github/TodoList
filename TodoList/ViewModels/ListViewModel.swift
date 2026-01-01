//
//  ListViewModel.swift
//  TodoList
//
//  Created by Sukhpreet Singh on 31/12/25.
//

import Foundation
import Combine
import SwiftUI

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    let itemsKey: String = "items_key"
    
    init() {
        getItems()
    }
    
    func getItems() {
        guard let data = UserDefaults.standard.data(forKey: itemsKey) else {return}
        guard let decodedItems = try? JSONDecoder().decode([ItemModel].self, from: data) else {return}
        self.items = decodedItems
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(indexSet: IndexSet, to: Int) {
        items.move(fromOffsets: indexSet, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.getUpdatedModel()
        }
    }
    
    func saveItems() {
        if let data = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(data, forKey: itemsKey)
        }
    }
}
