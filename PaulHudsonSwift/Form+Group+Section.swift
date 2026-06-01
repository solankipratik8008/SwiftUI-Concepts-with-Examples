//
//  Form+Group.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-05-27.
//

import SwiftUI

struct Form_Group_section: View {
    var body: some View {
        Form {
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                
            }
            
            Section {
                Text("Hello, World! from different section")
            }
           
        }
    }
}

#Preview {
    Form_Group_section()
}


// MARK: Form has limit: It cannot store more than 10 itmes, so group has been used to store more than 10 rows of Text("...")
