//
//  ContentView.swift
//  iExpense
//
//  Created by Omolemo Mashigo on 2025/03/03.
//

import SwiftUI

@Observable
class User{
    var firstName =  "Bilbo"
    var lastName =  "Baggins"
}
struct ContentView: View {
    
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
