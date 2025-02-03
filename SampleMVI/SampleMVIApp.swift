//
//  SampleMVIApp.swift
//  SampleMVI
//
//  Created by Rin on 2025/02/02.
//

import SwiftUI

@main
struct SampleMVIApp: App {
    var body: some Scene {
        WindowGroup {
            let viewState = ViewState()
            ContentView(
                viewState: viewState,
                intent: Intent(
                    viewState: viewState,
                    dataStore: DataStore()
                )
            )
        }
    }
}
