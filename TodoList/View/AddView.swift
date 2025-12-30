//
//  AddView.swift
//  TodoList
//
//  Created by Sukhpreet Singh on 30/12/25.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(.gray.opacity(0.3))
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an item")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
