//
//  ChallengeAppApp.swift
//  ChallengeApp
//
//  Created by mac on 9/18/21.
//

import SwiftUI

@main
struct ChallengeAppApp: App {
    var body: some Scene {
        WindowGroup {
            PersonTabView()
                .environmentObject(PersonModel())
        }
    }
}
