//
//  PickerWithState.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-05-28.
//

import SwiftUI
struct PickerWithState: View {
    
     var selection: [String] = ["OMU", "maits", "Arpit"]
        @State private var selected: String = "OMU"
    
    var body: some View {
        NavigationView{
            Form {
                Picker("Select Your Name" , selection: $selected) {
                    ForEach (selection, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}


struct PickerWithState_Previews: PreviewProvider {
    static var previews: some View {
        PickerWithState()
    }
}
