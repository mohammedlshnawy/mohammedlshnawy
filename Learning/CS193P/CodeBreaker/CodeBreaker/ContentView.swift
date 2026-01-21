//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Mohammed Shnawy on 15/01/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            pegs(colors:[.red,.green, .yellow, .blue])
            pegs(colors:[.red,.green, .blue, .blue])
            pegs(colors:[.green,.green, .yellow, .red])
            
        }
        .padding()
    }
    func pegs(colors: Array<Color>) -> some View {
        HStack {
            
            ForEach(colors.indices, id: \.self) { index in
                Circle().foregroundStyle(colors[index])
            }
            MatchMarkers(matches:[.exact, .inexact, .nomatch])
        }
    }
}


#Preview {
    ContentView()
}
