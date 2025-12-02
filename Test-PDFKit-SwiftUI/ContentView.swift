//
//  ContentView.swift
//  Test-PDFKit-SwiftUI
//
//  Created by Tomasz Lizer on 02/12/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let _ = Self._printChanges()
        VStack {
            let bundle = Bundle.main
            let url = bundle.url(forResource: "Privacy-Notice", withExtension: "pdf")
            if let url {
                PrivacyNoticeLink(url: url)
            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
