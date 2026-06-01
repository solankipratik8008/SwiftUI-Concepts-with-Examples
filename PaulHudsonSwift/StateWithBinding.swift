//
//  StateWithBinding.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-05-28.
//

import SwiftUI

struct StateWithBinding: View {
    
    
    @State private var name: String = ""
    

    
    var body: some View {
        
        Form{
            TextField("Enter your name:", text:$name)
            Text("Welcome \(name)")
        }
        
    }
}

struct StateWithBinding_Previews: PreviewProvider {
    static var previews: some View {
        StateWithBinding()
    }
}

//
//This tutorial explains the concept of two-way bindings in SwiftUI and how to connect application state to user interface controls like TextField.
//
//Key Concepts Covered:
//The Problem with State in UI Controls (0:15 - 0:58): SwiftUI views are a function of their state. Simply assigning a property to a TextField is insufficient because the framework needs a way to update the underlying data automatically whenever a user types into the field.
//The @State Property Wrapper (1:43 - 2:10): By using @State, you allow SwiftUI to manage the storage of a property, ensuring that the interface stays in sync with your data.
//Two-Way Binding (2:35 - 3:12): To create a connection that both reads and writes, SwiftUI uses a dollar sign ($) before the property name (e.g., $name). This tells SwiftUI to:
//Read the current value from the property to display it in the control.
//Write any changes made by the user back to the property in real-time.
//Practical Demonstration (3:15 - 4:15):
//The video demonstrates building a form where a TextField is bound to a @State variable named name (3:25).
//It shows how pressing Shift + Command + K in the simulator toggles the hardware keyboard for easier input (3:35).
//It concludes by showing a Text view that displays the name using simple string interpolation (name), contrasting it with the TextField that requires the binding ($name) (3:48 - 4:10).
//
//
//
