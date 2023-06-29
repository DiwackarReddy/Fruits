//
//  FruitsApp.swift
//  Fruits
//
//  Created by Diwakar Reddy  on 03/05/23.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
      WindowGroup {
        if isOnboarding {
          OnBoardingView()
        } else {
          ContentView()
        }
      }
    }
}
