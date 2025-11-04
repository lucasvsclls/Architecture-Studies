//
//  UserViewModel.swift
//  MVVM APP
//
//  Created by Lucas Vasconcellos Côrtes on 10/30/25.
//
import Combine

class UserViewModel: ObservableObject {
    @Published var user = User(name: "guilejrme", age: 21, email: "@gmail.com")
    
    func set<Value>(_ keyPath: WritableKeyPath<User, Value>, to newValue: Value) {
        user[keyPath: keyPath] = newValue
    }
    
    func updateProfile(name: String, age: Int, email: String){
        set(\.name, to: name)
        set(\.age, to: age)
        set(\.email, to: email)
    }
}
