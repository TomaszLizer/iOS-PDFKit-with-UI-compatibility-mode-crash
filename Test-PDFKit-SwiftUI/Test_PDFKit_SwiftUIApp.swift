//
//  Test_PDFKit_SwiftUIApp.swift
//  Test-PDFKit-SwiftUI
//
//  Created by Tomasz Lizer on 02/12/2025.
//

import SwiftUI

@main
struct Test_PDFKit_SwiftUIApp: App {

    @State
    private var path: [Screen] = [] {
        didSet {
            print("DEBUG - =============== PATH UPDATED ===============")
            print("DEBUG - path: \(path)")
        }
    }

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: .init(get: {
                path
            }, set: { newPath in
                self.path = newPath
            })) {
                ContentView() { path = [.test, .test] }
                    .navigationDestination(for: Screen.self) { screen in
                        switch screen {
                        case .test:
                            Text("TEST SCREEEN")
                        case .another:
                            VStack {
                                Text("ANOTHER TEST SCREEEN")
                                ContentView() { path.append(.test) }
                            }
                        }
                    }
            }
        }
    }
}
