//
//  ScoreArea.swift
//  War
//
//  Created by Brandon Coston on 2/18/23.
//

import SwiftUI

struct ScoreArea: View {
    @EnvironmentObject var model: GameModel
    var body: some View {
        HStack {
            Spacer()
            IndividualScore(
                Name: "Player",
                Score: model.playerScore
            )
            Spacer()
            IndividualScore(
                Name: "CPU",
                Score: model.cpuScore
            )
            Spacer()
        }
    }
}

struct ScoreArea_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            ScoreArea()
                .environmentObject(GameModel())
        }
    }
}
