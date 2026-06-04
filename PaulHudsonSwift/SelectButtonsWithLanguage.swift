//
//  SelectButtonsWithLanguage.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-06-01.
//
//
//  SelectinLanguageByButtons.swift
//  PaulHudsonSwift
//
//  Created by Pratik Solanki on 2026-06-01.
//

import SwiftUI

struct select: View {
    

    
    var languages: [String] = ["SwiftImage", "CSharpImage", "PythonImage", "ReactImage"]

    @State private var selectedImage = 0
    
    var body: some View {
        
        VStack(spacing: 30) {
            
            Image(languages[selectedImage])
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
            
            Button("Change the Language"){
                //MARK: For renadom Selection(UNCOMMENT THE SECTION TO USE)
                
//                selectedImaege = Int.random(in: 0..<lenghtOfLanguages)
                
                //MARK: FOR SELECTION IN SEQUENCE
                
                selectedImage += 1
                
                if selectedImage == languages.count {
                    selectedImage = 0
                }

                
                
            }
            .frame(width: 200, height: 50)
                
        }
        
    }
    
}



struct Language: View {
    
    @State private var showingScore = false
    @State private var messageOfScore = ""
    
    @State private var listOfLanguage:[String] = ["SwiftImage", "CSharpImage", "PythonImage", "ReactImage"].shuffled()
    
    @State private var total:Int = 0
    
    @State private var correctAnswer = Int.random(in: 0...3)
    
    var selectedLanguage = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            
            VStack{
                VStack {
                    Text("Select the image")
                        .foregroundColor(.white)
                    Text(listOfLanguage[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.largeTitle.weight(.heavy))
                        .padding()
                        
                }
                
                ForEach (0..<listOfLanguage.count) { number in
                    Button {
                        Buttontapped(number)
                        print(messageOfScore)
                    }
                    label: {
                        Image(listOfLanguage[number])
                            .resizable()
                            .scaledToFit()
                            .frame(width:100, height: 100)
                            .clipShape(Capsule())
                            .shadow(radius: 5)
                        
                    }
                }
                
                
                
            }
        }
        .alert(messageOfScore, isPresented: $showingScore){
            Button("Continue", action: askquestion)
        } message: {
            Text("Your score is \(total)")
        }
    }
    
    func Buttontapped(_ number: Int){
        if number == correctAnswer {
            messageOfScore = "Correct"
            total += 1
        }
        else {
            messageOfScore = "Wrong"
        }
        showingScore = true
    }
    
    func askquestion(){
        listOfLanguage.shuffle()
        correctAnswer = Int.random(in: 0...3)
    }
    

}








struct select_Previews: PreviewProvider {
        static var previews: some View {
        select()
    }
}


struct Language_Previews: PreviewProvider {
        static var previews: some View {
            Language()
    }
}

//
//This video explains how to add game logic to a Guess the Flag app, specifically focusing on handling user taps, displaying score alerts, and resetting the game. Here is the breakdown of the implementation:
//
//1. Game State and Randomization
//To keep the game dynamic, you must randomize the order of the countries array and the correct answer.
//
//Initial Setup: Modify the countries array using .shuffled() so the flags appear in a different order each time the game starts
//@State Properties: Use the @State property wrapper for countries and correctAnswer. This is crucial because standard struct properties are immutable; adding @State allows SwiftUI to update the UI when these values change
//2. Handling Flag Taps
//When a user taps a flag, the app needs to determine if the choice was correct and show feedback.
//
//The Method: Create a flagTapped(_ number: Int) function that compares the tapped index to the correctAnswer
//Alert Feedback: Introduce @State variables showingScore (a Boolean) and scoreTitle (a String). Based on the result, scoreTitle is set to "Correct" or "Wrong," and showingScore is toggled to true to trigger the alert

//3. Resetting the Game
//Once the user views the alert, the game should reset for the next round without restarting the entire app.
//
//Ask Question: Create an askQuestion() method that reshuffles the countries array and picks a new correctAnswer
//The Alert Modifier: Attach the .alert modifier to the end of your ZStack. It uses the scoreTitle for the header and calls the askQuestion method inside the "Continue" button's action block, ensuring the game board refreshes when the user finishes viewing their result
//
//
//
