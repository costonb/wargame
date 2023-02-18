//
//  ContentView.swift
//  War
//
//  Created by Brandon Coston on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: GameModel
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                CardArea()
                Spacer()
                DealButton()
                Spacer()
                ScoreArea()
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(GameModel())
    }
}
