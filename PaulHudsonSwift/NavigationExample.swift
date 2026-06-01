//
//  NavigationExample.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-05-27.
//

import SwiftUI

struct NavigationExample: View {
    
    var body: some View {
        NavigationView {
            Section{
                Form{
                    Text("Pratik Solanki")
                        
                }
                .navigationTitle("Top Developers")
                .padding(.top, 5)
            }
            
        }
    }
}


#Preview {
    NavigationExample()
}
