//
//  ContentView.swift
//  Wordplay
//
//  Created by Oliver Halvey on 10/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack{
                Text("Please enter desired words below.")
                Group {
                    HStack {
                        CustomTextField(placeholder:  "feeling", variable: $words.adj1)
                        CustomTextField(placeholder:  "feeling", variable: $words.adj2)
                        CustomTextField(placeholder:  "adjective", variable: $words.adj3)
                            .padding()
                    }
                    HStack{
                        CustomTextField(placeholder:  "adjective", variable: $words.adj4)
                        CustomTextField(placeholder:  "proper noun", variable: $words.noun1)
                        CustomTextField(placeholder: "silly word", variable: $words.sillyword)
                            .padding()
                    }
                    HStack{
                        CustomTextField(placeholder: "noun", variable: $words.noun3)
                        CustomTextField(placeholder:  "noun", variable: $words.noun2)
                        CustomTextField(placeholder: "noun", variable: $words.noun4)
                            .padding()
                    }
                    HStack{
                        CustomTextField(placeholder: "animal", variable: $words.animal3)
                        CustomTextField(placeholder: "animal", variable: $words.animal2)
                        CustomTextField(placeholder:  "animal", variable: $words.animal)
                            .padding()
                    }
                    HStack{
                        CustomTextField(placeholder:  "verb", variable: $words.verb)
                        CustomTextField(placeholder:  "verb", variable: $words.verb2)
                        CustomTextField(placeholder: "verb (ing)", variable: $words.verbIng)
                            .padding()
                    }
                    HStack{
                        CustomTextField(placeholder: "adverb (ly)", variable: $words.adverbLy)
                        CustomTextField(placeholder: "number", variable: $words.number)
                        CustomTextField(placeholder: "noun", variable: $words.noun6)
                            .padding()
                    }
                    HStack{
                        CustomTextField(placeholder:  "color", variable: $words.color)
                        CustomTextField(placeholder: "color", variable: $words.color2)
                        CustomTextField(placeholder: "color", variable: $words.color3)
                            .padding()
                    }
                    HStack{
                        CustomTextField(placeholder: "measure of time", variable: $words.time)
                        CustomTextField(placeholder: "noun", variable: $words.noun5)
                        
                            .padding()
                    }
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Wordplay")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Words {
    var adj1 = ""
    var adj2 = ""
    var adj3 = ""
    var adj4 = ""
    var adj5 = ""
    var adj6 = ""
    var adj7 = ""
    
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    var noun4 = ""
    var noun5 = ""
    var noun6 = ""
    
    var animal = ""
    var animal2 = ""
    var animal3 = ""
    var color = ""
    var color2 = ""
    var color3 = ""
    var verb = ""
    var verb2 = ""
    var verbIng = ""
    var adverbLy = ""
    var number = ""
    var number2 = ""
    var time = ""
    var sillyword = ""
}




struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
