//
//  SparklingApp.swift
//  Sparkling
//
//  Created by Maxim Vasilyev on 16.05.2024.
//

import SwiftUI

private struct SafeAreaInsetsEnvironmentKey: EnvironmentKey {
    static let defaultValue: (top: CGFloat, bottom: CGFloat) = (0, 0)
}

extension EnvironmentValues {
    var safeAreaInsets: (top: CGFloat, bottom: CGFloat) {
        get { self[SafeAreaInsetsEnvironmentKey.self] }
        set { self[SafeAreaInsetsEnvironmentKey.self] = newValue }
    }
}

@main
struct SparklingApp: App {
    @State private var safeAreaInsets: (top: CGFloat, bottom: CGFloat) = (0, 0)
    var body: some Scene {
        WindowGroup {
            ZStack {
                GeometryReader { proxy in
                    Color.clear.onAppear {
                        safeAreaInsets = (proxy.safeAreaInsets.top, proxy.safeAreaInsets.bottom)
                    }
                }
                
                MainView()
                    .environment(\.safeAreaInsets, safeAreaInsets)
            }
        }
    }
}
