//
//  ContentView.swift
//  MVVM APP
//
//  Created by Lucas Vasconcellos Côrtes on 10/30/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var userViewModel = UserViewModel()
    @State var nameText: String = ""
    @State var ageText: String = ""
    @State var emailText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, \(userViewModel.user.name)")
                
                TextField("Type your name", text: $nameText)
                TextField("Type your age", text: $ageText)
                TextField("Type your email", text: $emailText)
                
                Button("Update Infos") {
                    userViewModel.updateProfile(name: nameText, age: Int(ageText) ?? 18, email: emailText)
                }
                NavigationLink(destination: UserProfileView(user: userViewModel.user)) {
                    Text("Go to Profile")
                        .foregroundColor(.blue)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
