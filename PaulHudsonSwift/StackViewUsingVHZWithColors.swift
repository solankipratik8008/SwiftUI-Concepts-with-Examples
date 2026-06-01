//
//  StackViewUsingVHZ.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-05-30.
//

import SwiftUI

struct StackViewUsingVHZ:View {
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Spacer()
            HStack{
                Text("1")
                Text("2")
                Text("3")
            }
            HStack{
                Text("4")
                Text("5")
                Text("6")
            }
            HStack{
                Text("7")
                Text("8")
                Text("9")
            }
            HStack{
                Text("0")
            }
            
            Spacer()
        }
    
    }
}

struct ZStackAndOther: View {
    var body: some View{
        VStack{
            ZStack{
                Color.red
                    .frame(width: 200, height: 200)
                Text("Hello World")
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(.secondarySystemBackground))
                    .frame(width: 200, height: 200)
                Text("Hello Pratik")
                    .foregroundStyle(.primary)
            }
        }
    }
}

struct ColorsWithThinMaterial: View {
    
    var body: some View {
        ZStack{
            VStack (spacing: 0) {
                Color.red
                Color.blue
                    
            }
            
            Text("Pratik Solanki")
                .foregroundStyle(.secondary)
                .padding()
                .background(.ultraThinMaterial)
        }
    }
}










struct StackViewUsingVHZ_Previews: PreviewProvider {
    static var previews: some View {
        StackViewUsingVHZ()
    }
}

struct ZStackAndOther_Previews: PreviewProvider {
    static var previews: some View {
        ZStackAndOther()
    }
}

struct ColorsWithThinMaterial_Previews: PreviewProvider {
    static var previews: some View {
        ColorsWithThinMaterial()
    }
}
