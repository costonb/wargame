//
//  DealButton.swift
//  War
//
//  Created by Brandon Coston on 2/18/23.
//

import SwiftUI

struct DealButton: View {
    @EnvironmentObject var model: GameModel
    var body: some View {
        
        Button(action: {
            //generate random number for card
            let playerRand = Int.random(in: 2...14)
            let cpuRand = Int.random(in: 2...14)
            //update the cards
            model.playerCard = "card" + String(playerRand)
            model.cpuCard = "card" + String(cpuRand)
            //update the score
            if playerRand > cpuRand {
                model.playerScore += 1
            } else if cpuRand > playerRand {
                model.cpuScore += 1
            }
        }) {
            Image("dealbutton")
        }
    }
}

struct DealButton_Previews: PreviewProvider {
    static var previews: some View {
            DealButton()
        .environmentObject(GameModel())
    }
}
