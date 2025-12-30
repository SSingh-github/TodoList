//
//  ListView.swift
//  TodoList
//
//  Created by Sukhpreet Singh on 30/12/25.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is first item",
        "This is second item"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
