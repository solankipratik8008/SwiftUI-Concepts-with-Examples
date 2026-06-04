//
//  AlertPopup.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-06-01.
//


import SwiftUI

struct AlertPopup: View {
    
    @State private var showAlert: Bool = false
    
    var body: some View {
        Button("Show Alert") {
            showAlert = true
        }
        .alert("Attention!!", isPresented: $showAlert) {
            Button("OK", role: .cancel) {}
            Button( "Delete", role: .destructive) {}
        } message: {
            Text("Please Read This Message")
        }
            
    }
}

struct AlertPopup_Previews: PreviewProvider {
        static var previews: some View {
        AlertPopup()
    }
}


//MARK: EXPLANATION
//Key Concepts Covered:
//State-Driven UI: Paul Hudson emphasizes that in SwiftUI, views are a function of their state. Instead of explicitly telling the system to "show" an alert, you define a piece of state (a boolean) and the alert is displayed automatically when that state becomes true

//The Alert Modifier: The .alert() modifier is attached to the view, using a two-way data binding to a boolean variable (e.g., showingAlert). SwiftUI monitors this variable; when the user dismisses the alert, the framework automatically sets the boolean back to false


//Customizing Alerts:
//Buttons: You can add multiple buttons to an alert. Any button inside an alert will automatically dismiss it upon being tapped


//Roles: By using roles like .destructive (for actions like deleting) or .cancel, SwiftUI automatically styles the buttons appropriately (e.g., red text for destructive actions)

//Messages: You can provide a secondary message for additional context using a trailing closure alongside the title

//Next Steps:
//At the end of the video, Paul notes that this concludes the project overview. He suggests saving any experimental code created during this lesson and resetting the project to the original state to start building the functional game logic 
//
//
//
//
//
