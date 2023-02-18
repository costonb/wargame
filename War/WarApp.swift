//
//  WarApp.swift
//  War
//
//  Created by Brandon Coston on 2/10/23.
//

import SwiftUI

@main
struct WarApp: App {
    @StateObject private var modelData = GameModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
