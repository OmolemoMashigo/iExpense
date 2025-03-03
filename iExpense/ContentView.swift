//
//  ContentView.swift
//  iExpense
//
//  Created by Omolemo Mashigo on 2025/03/03.
//

import SwiftUI

struct SecondView: View{
    var body: some View{
        Text("Second View")
    }
}

struct ContentView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show sheet"){
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet){
            SecondView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
