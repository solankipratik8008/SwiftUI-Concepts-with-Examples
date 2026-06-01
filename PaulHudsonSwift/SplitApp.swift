//
//  SplitApp.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-05-28.
//

import SwiftUI

struct SplitApp: View {
    
    @State private var checkAmount = 0.0
    @State private var tipPercentage = 20
    @State private var numberOfPeople = 2
    @FocusState private var amountFocus: Bool
    
    var tipPercentages = [10,15,20,25,0]
    
    var Total: Double  {
        let totalPerson = Double(numberOfPeople)
        let tipSelection = Double(tipPercentage)
        
        let totalTip = checkAmount/100 * tipSelection
        let totalAmount = checkAmount + totalTip
        
        let grandTotal = totalAmount / totalPerson
        
        return grandTotal
    }
    
    var body: some View {
        NavigationStack {
        Form {
            Section{
                TextField("Amount", value: $checkAmount,format:.currency( code: Locale.current.currency?.identifier ?? "USD" ))
                    .keyboardType(.decimalPad)
                    .focused($amountFocus)
                
                
                Picker("Number Of people", selection: $numberOfPeople) {
                    ForEach(2..<100) { number in
                        Text("\(number) People")
                            .tag(number)
                    }
                }
                .pickerStyle(.navigationLink)
            
                
                
            }
            
            Section{
                Picker("Tip", selection: $tipPercentage) {
                    ForEach(tipPercentages, id: \.self) {
                        Text($0, format: .percent)
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text("How much tip do you want to leave?")
            }
            
            Section {
                Text("\(Total)")
            }
        }.navigationTitle("WeSplit")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            amountFocus.toggle()
                        }
                    }
                }.padding(.trailing)
                
    }
    }
}


struct SplitApp_Previews: PreviewProvider {
    static var previews: some View {
        SplitApp()
    }
}
