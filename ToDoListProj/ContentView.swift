//
//  ContentView.swift
//  ToDo List
//
//  Created by Noah Chudzik on 9/14/26.
//

import SwiftUI


struct Tasks: Identifiable {
    var id: UUID = UUID()
    var title: String
}


struct ContentView: View {
    
    @State private var ToDo = ""
    
    var body: some View {
        HStack {
            Text("To-Do List")
                .font(Font.largeTitle.bold())
                .padding()
                .position(x: 100, y: 30)
                .foregroundColor(.brown)
        }
        
        Spacer()
        
        VStack {
            TextField("Enter your next task", text: $ToDo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .position(x: 200, y: -275)
        }
    }
}

#Preview {
    ContentView()
}
