//
//  CardArea.swift
//  War
//
//  Created by Brandon Coston on 2/18/23.
//

import SwiftUI

struct CardArea: View {
    @EnvironmentObject var model: GameModel
    var body: some View {
        HStack {
            Spacer()
            Image(model.playerCard)
            Spacer()
            Image(model.cpuCard)
            Spacer()
        }
    }
}

struct CardArea_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            CardArea()
                .environmentObject(GameModel())
            
        }
    }
}
