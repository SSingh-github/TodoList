//
//  ListRowView.swift
//  TodoList
//
//  Created by Sukhpreet Singh on 30/12/25.
//
import SwiftUI

struct ListRowView: View {
    var item: ItemModel
    var body: some View {
        
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}
#Preview("first item", traits: .sizeThatFitsLayout){
    let item1 = ItemModel(title: "This is first item", isCompleted: true)
    ListRowView(item: item1)
}

#Preview("second item", traits: .sizeThatFitsLayout){
    let item2 = ItemModel(title: "This is second item", isCompleted: false)
    ListRowView(item: item2)
}
