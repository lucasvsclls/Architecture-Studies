//
//  UserViewModel.swift
//  MVVM APP
//
//  Created by Lucas Vasconcellos Côrtes on 10/30/25.
//
import Combine

class UserViewModel: ObservableObject {
    @Published var user = User(name: "guilejrme", age: 21, email: "@gmail.com")
    
    func setName(newName: String) {
        user.name = newName
    }
    
    func setAge(newAge: Int) {
        user.age = newAge
    }
    
    func setEmail(newEmail: String) {
        user.email = newEmail
    }
}
