//
//  iOS_ChallengeApp.swift
//  iOS_Challenge
//
//  Created by Arturo Diaz on 24/05/22.
//

import SwiftUI

@main
struct iOS_ChallengeApp: App {
    var albumViewModel = AlbumViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(albumViewModel)
        }
    }
}
