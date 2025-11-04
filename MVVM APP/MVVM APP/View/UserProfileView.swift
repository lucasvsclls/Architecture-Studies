//
//  UserProfileView.swift
//  MVVM APP
//
//  Created by Lucas Vasconcellos Côrtes on 11/3/25.
//

import SwiftUI

struct UserProfileView: View {
    let user: User
    
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(radius: 10)
                .padding()
            HStack {
                Text(user.name)
                    .font(Font.largeTitle)
                Spacer()
                Text("\(user.age)")
                    .font(Font.largeTitle)
            }
            .padding(.horizontal, 115)
            Text(user.email)
        }
        .backgroundStyle(Color.red)
    }
}

#Preview {
    UserProfileView(user: User(name: "Sarah", age: 20, email: "evelin_rbr@gmail.com"))
}
