//
//  AddView.swift
//  iExpense
//
//  Created by Omolemo Mashigo on 2025/03/05.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    
    var expense: Expense
    
    let types = ["Personal", "Business"]
    
    var body: some View {
        
        NavigationStack{
            Form{
                TextField("Name:", text: $name)
                
                Picker("Type", selection: $type){
                    ForEach(types, id: \.self){
                        Text($0)
                    }
                }
                
                TextField("amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
            .toolbar{
                Button("Save"){
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expense.items.append(item  )
                    dismiss()
                }
            }
        }
        
    }
}

#Preview {
    AddView(expense: Expense())
}
