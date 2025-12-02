//
//  Screen.swift
//  Test-PDFKit-SwiftUI
//
//  Created by Tomasz Lizer on 02/12/2025.
//
import SwiftUI

enum Screen: String, CustomStringConvertible, CaseIterable {
    case test
    case another

    var description: String {
        rawValue
    }
}

extension Screen {
    static func links() -> some View {
        ForEach(Self.allCases, id: \.self) { screen in
            NavigationLink(value: screen) {
                Text("Go to: \(screen.rawValue)")
            }
        }
    }
}
