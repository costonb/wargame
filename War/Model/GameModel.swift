//
//  GameModel.swift
//  War
//
//  Created by Brandon Coston on 2/18/23.
//

import Foundation

final class GameModel: ObservableObject {
    @Published var playerCard = "card5"
    @Published var cpuCard = "card9"
    @Published var playerScore = 0
    @Published var cpuScore = 0
}
