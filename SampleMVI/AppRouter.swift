//
//  AppRouter.swift
//  SampleMVI
//
//  Created by Rin on 2025/02/09.
//

import SwiftUI

enum RouterDestination: Hashable {
    case detailNumber(Int)
}

struct AppRouter: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationDestination(for: RouterDestination.self) { desination in
                switch desination {
                case .detailNumber(let number):
                    EmptyView()
                }
            }
    }
}

extension View {
    func withAppRouter() -> some View {
        modifier(AppRouter())
    }
}

@MainActor
final class Router {
    private var paths: [RouterDestination] = []

    func popToRoot() {
        paths.removeAll()
    }

    func navigateTo(_ destination: RouterDestination) {
        paths.append(destination)
    }
}

