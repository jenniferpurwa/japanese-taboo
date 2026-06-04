//
//  Jenolingo_v3App.swift
//  Jenolingo v3
//
//  Created by Jennifer Purwa on 6/1/26.
//

import SwiftUI

@main
struct Jenolingo_v3App: App {

    init() {
        #if os(iOS)
        UITextField.appearance().backgroundColor = .clear
        #endif
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
