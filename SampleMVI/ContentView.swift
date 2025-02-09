//
//  ContentView.swift
//  SampleMVI
//
//  Created by Rin on 2025/02/02.
//

import SwiftUI

struct ContentView: View {
    
    @State private var viewState: ViewState
    private let intent: Intent
    
    init(viewState: ViewState, intent: Intent) {
        _viewState = .init(wrappedValue: viewState)
        self.intent = intent
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("\(viewState.number)")
                
                Button("get random number") {
                    intent.tappedGenerateNumberButton()
                }
                
                Button("multiple number") {
                    intent.tappedMultipleButton(
                        number: viewState.number
                    )
                }
                
                Button("reset") {
                    intent.tappedResetButton()
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    let viewState = ViewState()
    ContentView(
        viewState: viewState,
        intent: Intent(
            viewState: viewState,
            dataStore: DataStore()
        )
    )
}
