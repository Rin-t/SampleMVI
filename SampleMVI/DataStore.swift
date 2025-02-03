//
//  ApiDataStore.swift
//  SampleMVI
//
//  Created by Rin on 2025/02/03.
//

import Foundation

protocol DataStoreProtocol {
    func fetchRandomNumber() async -> Int
    func fetchMultipulatedNumber(_ number: Int) async -> Int
}

final class DataStore: DataStoreProtocol {
    
    func fetchRandomNumber() async -> Int {
        try? await Task.sleep(nanoseconds: 500_000_000)
        return Int.random(in: 1...100)
    }
    
    func fetchMultipulatedNumber(_ number: Int) async -> Int {
        try? await Task.sleep(nanoseconds: 500_000_000)
        return number * 2
    }
}
