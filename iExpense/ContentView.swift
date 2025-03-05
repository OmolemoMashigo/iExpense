//
//  ContentView.swift
//  iExpense
//
//  Created by Omolemo Mashigo on 2025/03/03.
//

import SwiftUI

struct ExpenseItem: Identifiable{
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expense{
    var items = [ExpenseItem]()
}

struct ContentView: View {
    @State private var expenses = Expense()
    @State private var showingAddView = false

    
    var body: some View {
        NavigationStack{
            List{
                ForEach(expenses.items){ item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar{
                Button("add expense", systemImage: "plus"){
                    showingAddView = true
                }
            }
            .sheet(isPresented: $showingAddView){
                AddView(expense: expenses)
            }
        }
        
    }
    
    func removeItems(at offsets: IndexSet){
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
