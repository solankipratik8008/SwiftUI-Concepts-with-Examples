//
//  State+Struct.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-05-28.
//

import SwiftUI

struct State_Struct: View {
    
    @State private var count = 0
    
    var body: some View {
        
        Button("Count \(count)") {
            count+=1
        }
    }
}


struct TextColor: View {
    var body: some View{
        VStack{
            Text("Hey Pratik")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
            
            Text("Hello")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}


#Preview{
    TextColor()
}

#Preview {
    State_Struct()
}




//In SwiftUI, @State is a fundamental property wrapper that allows you to manage local data that changes over time, effectively enabling the "views as a function of their state" paradigm (0:04 - 0:56).
//
//Why @State is Necessary
//SwiftUI views are defined as structs, which are value types. By design, properties inside a struct are immutable; you cannot modify them from within the struct's methods (like a button's action) unless those methods are marked as mutating. However, SwiftUI’s body property is a computed property, which cannot be mutating. This creates a conflict when you want to update the UI based on user interaction (1:48 - 2:42).
//
//How @State Solves the Problem
//External Storage: When you add the @State attribute to a property, you are telling SwiftUI to store that data outside of the struct instance itself (3:34 - 3:52).
//Superpowers: The property wrapper effectively gives the property "superpowers," allowing the struct to modify the value even though the struct itself is technically immutable (2:44 - 3:05).
//Automatic UI Updates: SwiftUI keeps a close watch on any property marked with @State. Whenever the value changes, SwiftUI automatically invalidates the current view and redraws it to reflect the updated state (3:05 - 3:34).
//Best Practices
//Local Scope: @State is specifically designed for simple properties that belong to a single view (4:26 - 4:34).
//Private Access: Apple recommends marking @State properties as private. This explicitly signals that the data is intended only for that specific view and should not be shared or accessed from the outside (4:34 - 4:42).
//Performance: Using structs for views is highly efficient because SwiftUI frequently destroys and recreates them. @State allows the underlying data to persist even when the view struct is replaced by the system (3:52 - 4:16).
//
//
//
