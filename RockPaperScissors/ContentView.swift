//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Syrene Haber Bartolome on 2024/09/26.
//

import SwiftUI

struct ContentView: View {
    let appMoves = ["🪨", "🗒️", "✂️"]
    
    @State private var appChoice = ""
    @State private var playerWin = Bool.random()
    
    var body: some View {
        VStack {
            Text("\(appChoice)")
                .font(.system(size: 200))
                .padding()
                    
            Text("Player should: \(playerWin ? "Win" : "Lose")")
                .font(.headline)
                .padding()
                    
            Button(action: {
                appChoice = appMoves[Int.random(in: 0..<appMoves.count)]
                playerWin.toggle()
            }) {
                Text("Choose Move")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
