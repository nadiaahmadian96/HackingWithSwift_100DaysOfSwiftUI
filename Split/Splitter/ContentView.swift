//
//  ContentView.swift
//  Splitter
//
//  Created by Nadia Ahmadian on 2023-01-03.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var amountIsFocused : Bool
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    let tipPercentages = [10,15,20,25,30,0]
    
    var grandTotal : Double{
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount/100 * tipSelection
        return checkAmount + tipValue
    }
    
    var totalPerPerson : Double {
        let peopleCount = Double(numberOfPeople + 2 )
        let amountPerPerson = grandTotal/peopleCount
        return amountPerPerson
    }
    
    
    
    var body: some View {
        NavigationView {
            Form{
                Section{
                    
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "CAD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                }
                Section{
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id : \.self) { Text($0, format: .percent)
                            
                        }
                    }.pickerStyle(.segmented)
                } header:{
                    Text("How much tip do you want to leave?")
                }
                Section{
                    Text(grandTotal, format: .currency(code: Locale.current.currencyCode ?? "CAD"))
                }header:{
                    Text("Total amount")
                }
                Section{
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "CAD"))
                } header:{
                    Text("Amount per person")
                }
                
                
                
            }
            .navigationTitle("WeSplit")
            .toolbar{
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done"){
                        amountIsFocused = false
                    }
                }
            }
            
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
