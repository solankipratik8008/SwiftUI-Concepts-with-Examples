//
//  LinearGradient.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-05-31.
//

import SwiftUI

struct LinearGradientView: View {
    
    var body: some View {
        LinearGradient(colors: [.blue, .red], startPoint: .top, endPoint: .bottom)
    }
}

//MARK: We can also create the linear gradient specifying the percentage, where to stop!

struct LinearWithPercentageView: View {
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(stops: [
                .init(color: .blue, location: 0.45),   // 0%
                .init(color: .red, location: 0.55)     // 100%
            ]),
            startPoint: .top,
            endPoint: .bottom
        )
    }
}

//MARK: We can Also do a Angular Gradient
struct AngularGradientView: View {
    
    var body: some View {
        AngularGradient(gradient: Gradient(colors: [.red, .blue, .green, .yellow, .indigo]), center: .center)
    }
}




struct LinearGradientView_Preview: PreviewProvider {
    static var previews: some View {
        LinearGradientView()
    }
}

   
struct LinearWithPercentageView_Preview: PreviewProvider {
    static var previews: some View {
        LinearWithPercentageView()
    }
}

struct AngularGradientView_Preview: PreviewProvider {
    static var previews: some View {
        AngularGradientView()
    }
}
