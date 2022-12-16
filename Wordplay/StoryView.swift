//
//  StoryView.swift
//  Wordplay
//
//  Created by Oliver Halvey on 10/13/22.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    
    
    func writestory() -> String {
        return "This weekend I am going camping with \(words.noun1). I packed my lantern, sleeping bag, and \(words.noun2). I am so \(words.adj1) to \(words.verb) in a tent. I am \(words.adj2) we might see a \(words.animal), they are kind of dangerous. We are going to hike, fish, and \(words.verb2). I have heard that the \(words.color) lake is great for \(words.verbIng). Then we will \(words.adverbLy) hike through the forest for \(words.number2) \(words.time). If I see a \(words.color2) \(words.animal3) while hiking, I am going to bring it home as a pet! At night we will tell \(words.noun4) \(words.sillyword) stories and roast \(words.noun5) \(words.sillyword) around the campfire!"
        
        
    }
    var body: some View {
        Text(writestory())
    }
}
    
    struct StoryView_Previews: PreviewProvider {
        static var previews: some View {
            StoryView(words : Words())
            
        }
        
    }
    
