//
//  ListRowView.swift
//  TodoList
//
//  Created by Sukhpreet Singh on 30/12/25.
//
import SwiftUI

struct ListRowView: View {
    var title: String
    var body: some View {
        
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}
#Preview{
    ListRowView(title: "This is preview")
}
