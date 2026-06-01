//
//  ButtonsAndImages.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-05-31.
//

import SwiftUI


struct ButtonsAndImages: View {
    var body: some View {
        Button("Delete Selection"){
            print("Delete it!!!")
        }
        }
}

// MARK: Here the button is closure so we can also call function
struct ButtonWithClosure: View {
    func PressTHeFunc(){
        print("Pressed it!!!")
    }
    
    var body: some View {
        Button("Press me", action: PressTHeFunc)
        // Check the output in the Canvas (below of your Xocde)
    }
}


struct ButtonWithCustomisastion: View {
    var body: some View {
        
        VStack(spacing: 20) {
            Button("Print me") {}
                .buttonStyle(.borderedProminent)
            
            Button("Print me") {}
                .buttonStyle(.bordered)
            
            Button("Print me" , role: .destructive) {}
                .buttonStyle(.borderedProminent)
            
            Button("Print me") {}
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            
        }
    }
}


struct ButtonsWithTheLable: View {
    var body: some View{
        Button {
            print("Print me")
            // any actions goes here
        }
        label: {
            Text("Press Me")
                .padding()
                .foregroundStyle(Color.blue)
                .background(Color.yellow)
            // any customization goes here
        }
    }
}

struct ButtonWithImage: View {
    
    var body: some View {
        VStack(spacing: 40) {
            Button {
                print("Button With Image")
                
            }
            label: {
                Image(systemName: "pencil")
            }
            
            //MARK: SECOND : IMAGE WITH TEXT
            Button{
                print("Image With Text Pressed")
            }
            label: {
                Label("Edit", systemImage: "pencil")
            }
        }
    }
}

//MARK: FOR IMAGE QUALITY USE THIS



//
//The Issue:
//When you place an image inside a button, SwiftUI often automatically applies a blue tint to the graphic. This is intended to signal to the user that the element is interactive/tappable, but it often overrides the actual colors of your image, resulting in an undesired solid blue icon .
//
//The Solution:
//To prevent this behavior and ensure your image appears with its intended colors, you must apply the .renderingMode(.original) modifier to the image .
//
//How to implement: Append .renderingMode(.original) directly to your Image view declaration.
//Result: This forces SwiftUI to ignore the system's interactive tinting and render the asset exactly as it appears in your project's assets, preserving the original graphic design .




struct ButtonsAndImages_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsAndImages()
    }
}

struct ButtonsWithClosure_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithClosure()
    }
}





struct ButtonWithCustomisastion_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithCustomisastion()
    }
}

struct ButtonsWithTheLable_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsWithTheLable()
    }
}

struct ButtonWithImage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithImage()
    }
}
