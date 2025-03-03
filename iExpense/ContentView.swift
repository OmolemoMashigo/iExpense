//
//  ContentView.swift
//  iExpense
//
//  Created by Omolemo Mashigo on 2025/03/03.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numbers = [Int]()
    @State private var currentNumer = 1
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(numbers, id: \.self){
                        Text("row \($0)")
                    }
                    .onDelete(perform: removeRows)
                    
                   
                }
                Button("add number"){
                    numbers.append(currentNumer)
                    currentNumer += 1
                }
            }
            .toolbar{
                EditButton()
            }
        }
        
    }
    
    func removeRows(at offsets: IndexSet){
        numbers.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
