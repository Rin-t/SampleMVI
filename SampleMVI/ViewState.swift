//
//  ViewState.swift
//  SampleMVI
//
//  Created by Rin on 2025/02/02.
//

import SwiftUI
import Observation

@Observable
final class ViewState {
    
    var number = 0
    
    func update(number: Int) {
        self.number = number
    }
    
    func resetNumber() {
        self.number = 0
    }
}
