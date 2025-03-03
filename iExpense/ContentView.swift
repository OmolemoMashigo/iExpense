//
//  ContentView.swift
//  iExpense
//
//  Created by Omolemo Mashigo on 2025/03/03.
//

import SwiftUI

struct SecondView: View{
    @Environment(\.dismiss) var dismiss
    let name: String
    var body: some View{
        VStack{
            Text("Hello \(name)")
            
            Button("Dismiss"){
                dismiss()
            }
        }
        
    }
}

struct ContentView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show sheet"){
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet){
            SecondView(name: "Omo")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
