//
//  ContentView.swift
//  MVVM APP
//
//  Created by Lucas Vasconcellos Côrtes on 10/30/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var userViewModel = UserViewModel()
    @State var text: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, \(userViewModel.user.name)")
            
            TextField("Type your real name", text: $text)
            
            Button("Update Name") {
                userViewModel.setName(newName: text)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
