//
//  BatvettApp.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 16/06/2024.
//

import SwiftUI
import SwiftData

@main
struct BatvettApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreen()
        }
        .modelContainer(for: [NavigationAid.self, Knot.self])
    }
}
