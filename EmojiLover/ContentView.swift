//
//  ContentView.swift
//  EmojiLover
//
//  Created by NotTheKing on 2024-08-09.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🤖, 🐍, 👀, 😁, 🗿
}

struct ContentView: View {
    @State var selection: Emoji = .🗿
    
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("")
            .toolbar {
                
                ToolbarItem(placement: .principal) {
                    Text("M M X X IV")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
