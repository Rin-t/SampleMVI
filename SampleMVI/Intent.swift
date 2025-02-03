//
//  Intent.swift
//  SampleMVI
//
//  Created by Rin on 2025/02/02.
//

import Foundation

final class Intent {
    weak var viewState: ViewState?
    private let dataStore: DataStoreProtocol
    
    init(viewState: ViewState, dataStore: DataStoreProtocol) {
        self.viewState = viewState
        self.dataStore = dataStore
    }
    
    func tappedGenerateNumberButton() {
        Task {
            guard let viewState else { return }
            let response = await dataStore.fetchRandomNumber()
            viewState.update(number: response)
        }
    }
    
    func tappedMultipleButton(number: Int) {
        Task {
            guard let viewState else { return }
            let response = await dataStore.fetchMultipulatedNumber(number)
            viewState.update(number: response)
        }
    }
    
    func tappedResetButton() {
        guard let viewState else { return }
        viewState.resetNumber()
    }
}
